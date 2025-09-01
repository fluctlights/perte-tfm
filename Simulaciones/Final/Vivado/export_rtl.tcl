# Recursively copy concrete folder 
proc copy_dir {src dst} {

    # Try to create folder if it does not exist
    file mkdir -p $dst  
   
    # Iterate over all elements on the soruce folder
    foreach item [glob -nocomplain -directory $src *] {
        set base [file tail $item]
        set target [file join $dst $base]

        if {[file isdirectory $item]} {
            # Recursive call until file found
            copy_dir $item $target
        } else {
            # Base case, copy the file
            file copy -force $item $target
        }
    }
}

##################
# MAIN EXECUTION #
##################

# Open your project
# open_project /home/fluctlights/VivadoProjects/tfm_freertos/tfm_freertos.xpr

# 0. Open the block design
open_bd_design [get_files */design_1.bd]

# 1. Generate HDL for the block design (design_1.bd)
generate_target all [get_files */design_1.bd]

# 2. Reset and run synthesis
reset_run synth_1
launch_runs synth_1 -jobs 4 # depends on machine used
wait_on_run synth_1

# 3. Open synthesized design
open_run synth_1

# 4. Make export folder
set outdir "/home/fluctlights/Escritorio/PERTE/TFM/tfm_freertos/export_rtl"
file mkdir $outdir

# Get all RTL files Vivado is using (Verilog/SystemVerilog/VHDL)
set src_files [get_files -compile_order sources -used_in synthesis]

# Copy them to export folder
foreach f $src_files {
    file copy -force $f $outdir
}

# 5. Gather all HLS base RTL files
set hls_rtl_dir "/home/fluctlights/HlsProjects/bit_reversal/solution2/impl/ip/hdl/verilog"

# Create a list of all files in the HLS RTL directory
set hls_files [glob -nocomplain -join $hls_rtl_dir/*]

# Copy each file to the export folder
foreach f $hls_files {
    file copy -force $f $outdir
}

# 6. Get Block Design main RTL files
set bd_rtl_modules_dir "/home/fluctlights/VivadoProjects/tfm_freertos/tfm_freertos.ip_user_files/bd/design_1"
file mkdir $outdir/bd_design_files

# Call procedure copy_dir to copy block design main RTL modules
copy_dir $bd_rtl_modules_dir $outdir/bd_design_files

puts "Files exported on: $outdir"




