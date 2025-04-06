%Inferencia
%Hechos Definimos qué lenguajes programa cada persona.
sabe(ana,python).
sabe(ana,java).
sabe(juan,prolog).
sabe(carlos,python).
sabe(carlos,cplusplus).

%Regla 1. Una persona es programadora si sabe al menos un lenguaje.
programador(ana).
programador(juan).
programador(carlos).
%Regla 2. Una persona es desarrollador full-stack si sabe Python y Java.
desarrollador(ana).