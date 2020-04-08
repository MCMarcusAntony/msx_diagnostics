;***********************************************************
;
;   MSX DIAGNOSTICS
;   Version 0.9.0-a
;	ASM Z80 MSX
;	Directivas de compilacion para ROM de 32kb
;
;	(cc) 2018-2020 Cesar Rincon "NightFox"
;	https://nightfoxandco.com
;
;
;	Compilar con asMSX 0.19 o superior
;	https://github.com/Fubukimaru/asMSX
;
;***********************************************************





;***********************************************************
; Directivas para el compilador
;***********************************************************

; ----------------------------------------------------------
; Definicion de variables [PAGE 3] $C000
; ----------------------------------------------------------

; Almacena las variables en la pagina 3 (Comentar si no es una ROM)
.PAGE 3
.INCLUDE "ngn/ngn_vars.asm"
.INCLUDE "prog/vars.asm"


; ----------------------------------------------------------
; Directivas del formato
; ----------------------------------------------------------

.PAGE 1												; Selecciona la pagina 1 [$4000] (Codigo del programa)
.ROM												; Se creara el binario en formato ROM de hasta 32kb
.START PROGRAM_START_ADDRESS						; Indicale al compilador donde empieza el programa
.db 77, 83, 88, 95, 68, 73, 65, 71, 0, 0, 0, 0      ; 12 digitos para completar la cabecera de la ROM

OUTPUT_FORMAT = 2									; Define el formato de salida



;***********************************************************
; Fin del archivo
;***********************************************************
F_ROM_EOF: