# PERTE CHIP - TFM 
Autor : Antonio Mateo Francés
Tutor : Fernando Rincón Calle

## Descripción
En este repositorio se aloja el proyecto "Tareas Hardware Para FreeRTOS y X-HEEP"
NOTA: se usará un fork de X-HEEP conocido como GR-HEEP, cuyo repo está [en este enlace](https://github.com/davidmallasen/GR-HEEP),

## Carpetas
Cada carpeta corresponde a una subparte del proyecto:

- **GRHEEP_Integration:** tiene varias subcarpetas:

	- **_HW_Design_:** tiene diseño HW optimizado para Verilator
	- **_applications_:** incluye los programas en C ejecutados en GR-HEEP
	- **_execution_logs_:** dump de la salida y la waveform `.vcd` de las ejecuciones en GR-HEEP
- **Documento:** archivos LaTeX del proyecto y el PDF generado tras la compilación
- **GR-HEEP-connect-bus:** archivos de la plataforma GR-HEEP (fork de X-HEEP).
- **simulation_legacy:** archivos antiguos de la primera versión planteada para simular en Vivado
- **tfm_freertos:** códigos y proyectos en Vivado y EdaPlayground de las simulaciones funcionales
