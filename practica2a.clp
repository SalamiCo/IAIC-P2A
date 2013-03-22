;;;;; Práctica 2A IAIC ;;;;;

;;; definicion de plantillas (deftemplates)

(deftemplate persona
	(slot nombre        (type SYMBOL) (default ""))
	(slot sexo          (type SYMBOL) (allowed-values hombre mujer))
	(slot edad          (type NUMBER) (default 18))
	(slot altura        (type NUMBER))
	(slot peso          (type NUMBER))
	(slot cuestaHablar  (type SYMBOL) (allowed-values TRUE FALSE))
	(slot gustaSalir    (type SYMBOL) (allowed-values TRUE FALSE))
	(slot numAmigos     (type NUMBER) (default 0))
	(slot religion      (type SYMBOL) (default ateo))
	(slot twitter       (type SYMBOL) (allowed-values TRUE FALSE))
	(slot facebook      (type SYMBOL) (allowed-values TRUE FALSE))
	(slot timido        (type SYMBOL) (default FALSE) (allowed-values TRUE FALSE))
	(slot sociable      (type SYMBOL) (default FALSE) (allowed-values TRUE FALSE))
	(slot caracter      (type SYMBOL) (default noClasificable) (allowed-values extrovertido introvertido noClasificable))
	(slot muchosAmigos  (type SYMBOL) (default FALSE) (allowed-values TRUE FALSE))
)

(deftemplate emparejamiento
	(slot nombre1)
	(slot nombre2)
	(slot afinidad (type NUMBER) (default 0))
	(slot tipoCita (type SYMBOL) (default sinCita) (allowed-values sinCita citaNormal citaMagica))
)



;;; definicion de hechos iniciales (deffacts)

(deffacts usuarios
	(persona (nombre pedro) (sexo hombre) (edad 22) (altura 175) (peso 65) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 25) (religion ateo) (twitter FALSE) (facebook TRUE))

	(persona (nombre lucia) (sexo mujer) (edad 20) (altura 165) (peso 50) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 25) (religion ateo) (twitter TRUE) (facebook FALSE))

	(persona (nombre dani) (sexo hombre) (edad 21) (altura 175) (peso 81) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 2) (religion cristiano) (twitter TRUE) (facebook TRUE))

	(persona (nombre paloma) (sexo mujer) (edad 20) (altura 164) (peso 70) (cuestaHablar TRUE) (gustaSalir TRUE) (numAmigos 4) (religion ateo) (twitter TRUE) (facebook TRUE))

	(persona (nombre raquel) (sexo mujer) (edad 22) (altura 165) (peso 60) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 65) (religion ateo) (twitter TRUE) (facebook TRUE))

	(persona (nombre arturo) (sexo hombre) (edad 24) (altura 170) (peso 70) (cuestaHablar TRUE) (gustaSalir FALSE) (numAmigos 21) (religion cristiano) (twitter TRUE) (facebook TRUE))

	(persona (nombre sara) (sexo mujer) (edad 36) (altura 160) (peso 50) (cuestaHablar TRUE) (gustaSalir FALSE) (numAmigos 15) (religion judio) (twitter FALSE) (facebook FALSE))

	(persona (nombre hermenegildo) (sexo hombre) (edad 65) (altura 170) (peso 63) (cuestaHablar FALSE) (gustaSalir FALSE) (numAmigos 14) (religion cristiano) (twitter TRUE) (facebook FALSE))

	(persona (nombre brumjilda) (sexo mujer) (edad 46) (altura 155) (peso 50) (cuestaHablar TRUE) (gustaSalir FALSE) (numAmigos 2) (religion cristiano) (twitter FALSE) (facebook FALSE))

	(persona (nombre pretestato) (sexo hombre) (edad 38) (altura 190) (peso 90) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 60) (religion ateo) (twitter TRUE) (facebook TRUE))

	(persona (nombre meridiana) (sexo mujer) (edad 24) (altura 150) (peso 80) (cuestaHablar TRUE) (gustaSalir TRUE) (numAmigos 3) (religion cristiano) (twitter FALSE) (facebook FALSE))

	(persona (nombre exuperio) (sexo hombre) (edad 60) (altura 170) (peso 68) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 1) (religion ateo) (twitter FALSE) (facebook FALSE))

	(persona (nombre heularia) (sexo mujer) (edad 80) (altura 189) (peso 50) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 50) (religion judio) (twitter TRUE) (facebook TRUE))

	(persona (nombre gervasio) (sexo hombre) (edad 28) (altura 180) (peso 65) (cuestaHablar FALSE) (gustaSalir FALSE) (numAmigos 65) (religion cristiano) (twitter TRUE) (facebook TRUE))

	(persona (nombre herminia) (sexo mujer) (edad 30) (altura 180) (peso 80) (cuestaHablar FALSE) (gustaSalir FALSE) (numAmigos 12) (religion ateo) (twitter FALSE) (facebook TRUE))

	(persona (nombre wamba) (sexo hombre) (edad 101) (altura 140) (peso 38) (cuestaHablar TRUE) (gustaSalir TRUE) (numAmigos 0) (religion visigodo) (twitter FALSE) (facebook FALSE))

	(persona (nombre theodora) (sexo mujer) (edad 19) (altura 167) (peso 58) (cuestaHablar TRUE) (gustaSalir FALSE) (numAmigos 2) (religion cristiano) (twitter FALSE) (facebook TRUE))

	(persona (nombre ash) (sexo hombre) (edad 18) (altura 155) (peso 55) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 35) (religion cristiano) (twitter TRUE) (facebook TRUE))

	(persona (nombre misty) (sexo mujer) (edad 20) (altura 165) (peso 50) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 25) (religion ateo) (twitter TRUE) (facebook TRUE))

	(persona (nombre brock) (sexo hombre) (edad 22) (altura 190) (peso 90) (cuestaHablar TRUE) (gustaSalir TRUE) (numAmigos 21) (religion cristiano) (twitter TRUE) (facebook TRUE))

	(persona (nombre hailey) (sexo mujer) (edad 22) (altura 160) (peso 50) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 30) (religion ateo) (twitter TRUE) (facebook TRUE))

	(persona (nombre angel) (sexo hombre) (edad 22) (altura 170) (peso 60) (cuestaHablar TRUE) (gustaSalir FALSE) (numAmigos 15) (religion cristiano) (twitter FALSE) (facebook FALSE))

	(persona (nombre sasha) (sexo mujer) (edad 25) (altura 168) (peso 50) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 200) (religion ateo) (twitter TRUE) (facebook TRUE))

	(persona (nombre nacho) (sexo hombre) (edad 38 (altura 185) (peso 85) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 250) (religion ateo) (twitter TRUE) (facebook TRUE))

	(persona (nombre tenia) (sexo mujer) (edad 67) (altura 190) (peso 70) (cuestaHablar TRUE) (gustaSalir FALSE) (numAmigos 1) (religion jehova) (twitter FALSE) (facebook FALSE))

	(persona (nombre julio) (sexo hombre) (edad 56) (altura 169) (peso 75) (cuestaHablar TRUE) (gustaSalir FALSE) (numAmigos 3) (religion cristiano) (twitter FALSE) (facebook TRUE))

	(persona (nombre maria) (sexo mujer) (edad 30) (altura 165) (peso 60) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 15) (religion ateo) (twitter FALSE) (facebook TRUE))

	(persona (nombre junkpilwon) (sexo hombre) (edad 45) (altura 156) (peso 55) (cuestaHablar TRUE) (gustaSalir TRUE) (numAmigos 27) (religion tahoismo) (twitter TRUE) (facebook TRUE))

	(persona (nombre minjoo) (sexo mujer) (edad 18) (altura 146) (peso 40) (cuestaHablar FALSE) (gustaSalir FALSE) (numAmigos 50) (religion sintohismo) (twitter TRUE) (facebook TRUE))

	(persona (nombre groucho) (sexo hombre) (edad 76) (altura 177) (peso 70) (cuestaHablar FALSE) (gustaSalir FALSE) (numAmigos 75) (religion ateo) (twitter TRUE) (facebook FALSE))

	(persona (nombre marta) (sexo mujer) (edad 35) (altura 162) (peso 45) (cuestaHablar TRUE) (gustaSalir TRUE) (numAmigos 10) (religion cristiano) (twitter FALSE) (facebook TRUE))

	(persona (nombre antonio) (sexo hombre) (edad 22) (altura 175) (peso 65) (cuestaHablar TRUE) (gustaSalir FALSE) (numAmigos 25) (religion ateo) (twitter FALSE) (facebook FALSE))

	(persona (nombre eva) (sexo mujer) (edad 43) (altura 166) (peso 70) (cuestaHablar TRUE) (gustaSalir FALSE) (numAmigos 5) (religion cristiano) (twitter FALSE) (facebook FALSE))

	(persona (nombre samuel) (sexo hombre) (edad 22) (altura 177) (peso 70) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 50) (religion ateo) (twitter TRUE) (facebook TRUE))

	(persona (nombre ana) (sexo mujer) (edad 22) (altura 165) (peso 55) (cuestaHablar TRUE) (gustaSalir TRUE) (numAmigos 25) (religion ateo) (twitter FALSE) (facebook TRUE))

	(persona (nombre crespo) (sexo hombre) (edad 47) (altura 175) (peso 70) (cuestaHablar FALSE) (gustaSalir FALSE) (numAmigos 1) (religion cristiano) (twitter FALSE) (facebook FALSE))

	(persona (nombre sandra) (sexo mujer) (edad 31) (altura 170) (peso 60) (cuestaHablar TRUE) (gustaSalir TRUE) (numAmigos 23) (religion ateo) (twitter FALSE) (facebook TRUE))

	(persona (nombre abel) (sexo hombre) (edad 23) (altura 167) (peso 55) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 15) (religion ateo) (twitter FALSE) (facebook TRUE))

	(persona (nombre elena) (sexo mujer) (edad 21) (altura 170) (peso 60) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 45) (religion cristiano) (twitter FALSE) (facebook TRUE))

	(persona (nombre mario) (sexo hombre) (edad 45) (altura 165) (peso 70) (cuestaHablar TRUE) (gustaSalir TRUE) (numAmigos 14) (religion cristiano) (twitter FALSE) (facebook FALSE))
)



;;; variables globales (defglobal)

(defglobal ?*crlf* = "
") ; Esta variables es para poder añadir saltos de linea



;;; definicion de reglas (defrules)
;; 3 modulos: clasificar, compatibilizar, emparejar

;;;;;;;;;;;;;;;;;;;;;;;
;; Módulo Clasificar ;;

(defmodule clasificar) ;indica si es introvertido o extrovertido

(defrule esTimido
	?p <- (persona (cuestaHablar ?ch))
	=>
	(modify ?p (timido ?ch))
)

(defrule tieneMuchosAmigos
	?p <- (persona (numAmigos ?na))
	=>
	(modify ?p (muchosAmigos (> ?na 20)))
)

(defrule muySociable
	?p <- (persona (muchosAmigos TRUE) (twitter TRUE) (facebook TRUE))
	=>
	(modify ?p (sociable TRUE))
)

(defrule caracterExtrovertido
	?p <- (persona (gustaSalir TRUE) (sociable TRUE))
	=>
	(modify ?p (caracter extrovertido))
)

(defrule caracterIntrovertido
	?p <- (persona (timido TRUE) (muchosAmigos FALSE))
	=>
	(modify ?p (caracter introvertido))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Módulo Compatibilizar ;;

(defmodule compatibilizar) ;indica cuales son compatibles

(defrule compatibles1
	(persona (nombre ?n1) (sexo hombre) (religion ?r) (caracter ?c))
	(persona (nombre ?n2) (sexo mujer) (religion ?r) (caracter ?c))
	=>
	(assert (emparejamiento (nombre1 ?n1) (nombre2 ?n2)))
)

(defrule compatibles2
	(persona (nombre ?n1) (caracter noClasificable) (muchosAmigos TRUE) (sexo hombre) (religion ?r1))
	(persona (nombre ?n2) (caracter noClasificable) (muchosAmigos TRUE) (sexo mujer) (religion ?r2))
	(test (<> ?r1 ?r2))
	=>
	(assert (emparejamiento (nombre1 ?n1) (nombre2 ?n2)))
)
;;;;;;;;;;;;;;;;;;
;; Módulo Citar ;;

(defmodule citar) ;establece citas

(defrule citar1
	?e <- (emparejamiento (nombre ?n1) (nombre ?n2) (tipoCita sinCita))
	?p1 <- (persona (nombre ?n1) (edad ?edad1))
	?p2 <- (persona (nombre ?n2) (edad ?edad2))
	(test (<= (abs (- ?edad1 ?edad2)) 10))
	=> 
	(modify ?e (tipoCita citaNormal))
)

(defrule citar2
	?e <- (emparejamiento (nombre ?n1) (nombre ?n2) (tipoCita sinCita))
	?p1 <- (persona (nombre ?n1) (edad ?edad1))
	?p2 <- (persona (nombre ?n2) (edad ?edad2))
	(test (> (?edad1) 50))
	(test (> (?edad2) 50))
	=> 
	(modify ?e (tipoCita citaNormal))
)

(defrule superCita
	?e <- (emparejamiento (nombre ?n1) (nombre ?n2) (afinidad ?a) (tipoCita sinCita))
	(test (> (?afinidad) 80))
	=>
	(modify ?e (tipoCita citaMagica))
)

(defrule asignarAfinidad

)

;;;;;;;;;;;;
;; Prueba ;;

(reset)
(focus clasificar compatibilizar citar)
(run)