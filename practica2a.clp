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
	(persona (nombre pedro) (sexo hombre) (edad 22) (altura 175) (peso 65) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 25) (religion informatico) (twitter TRUE) (facebook TRUE))

	(persona (nombre lucia) (sexo mujer) (edad 20) (altura 165) (peso 50) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 25) (religion ateo) (twitter TRUE) (facebook TRUE))

	(persona (nombre darkhogg) (sexo hombre) (edad 21) (altura 175) (peso 81) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 2) (religion informatico) (twitter TRUE) (facebook TRUE))

	(persona (nombre paloma) (sexo mujer) (edad 20) (altura 164) (peso 70) (cuestaHablar TRUE) (gustaSalir TRUE) (numAmigos 4) (religion ateo) (twitter TRUE) (facebook TRUE))

	(persona (nombre raquel) (sexo mujer) (edad 22) (altura 165) (peso 60) (cuestaHablar FALSE) (gustaSalir TRUE) (numAmigos 65) (religion informatico) (twitter TRUE) (facebook TRUE))

	(persona (nombre hackturo) (sexo hombre) (edad 24) (altura 170) (peso 70) (cuestaHablar TRUE) (gustaSalir FALSE) (numAmigos 21) (religion informatico) (twitter TRUE) (facebook TRUE))

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
	(modify ?p (sociable (TRUE)))
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
	?p1 <- (persona (nombre ?n1) (sexo hombre) (religion ?r) (caracter ?c))
	?p2 <- (persona (nombre ?n2) (sexo mujer) (religion ?r) (caracter ?c))
	=>
	(assert (emparejamiento (?n1) (?n2)))
)



;;;;;;;;;;;;;;;;;;
;; Módulo Citar ;;

(defmodule citar) ;establece citas


;;;;;;;;;;;;
;; Prueba ;;

(reset)
(focus clasificar compatibilizar citar)
(run)