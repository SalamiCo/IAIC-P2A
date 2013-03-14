;;;;; Práctica 2A IAIC ;;;;;

;;; definicion de plantillas (deftemplates)

(deftemplate persona
	(slot nombre)
	(slot sexo)
	(slot edad)
	(slot altura)
	(slot peso)
	(slot cuestaHablar)
	(slot gustaSalir)
	(slot numAmigos)
	(slot religion)
	(slot twitter)
	(slot facebook))



;;; definicion de hechos iniciales (deffacts)

(deffacts usuarios
	(nombre pedro) (sexo hombre) (edad 22) (altura 175) (peso 65) (cuestaHablar false) (gustaSalir true) (numAmigos 25) (religion ateo) (twitter true) (facebook true))



;;; variables globales (defglobal)

(defglobal ?*crlf* = "
") ; Esta variables es para poder añadir saltos de linea



;;; definicion de reglas (defrules)
;; 3 modulos: clasificar, compatibilizar, emparejar

(defmodule clasificar) ;indica si es introvertido o extrovertido
(defrule introvertido
	persona ((nombre ?n) (sexo ?s) (edad ?e) (altura ?a) (peso ?p) (cuestaHablar true) (gustaSalir ?gs) (numAmigos ?na) (religion ?r) (twitter ?t) (facebook ?f))
	=>
	)

(defmodule compatibilizar) ;indica cuales son compatibles

(defmodule citar) ;establece citas

(reset)
(run)