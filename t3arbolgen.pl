%Relacion de paternidad
padre(epigmenio,epifanio).
padre(epifanio,jose).
padre(margarito,catalina).
padre(jose,karen).
padre(bernardo,ignacio).
padre(ignacio,alicia).
padre(crecencio,rosa).
padre(jose,aracely).

%Relacion de maternidad
madre(rita,rosa).
madre(rosa,alicia).
madre(maria,ignacio).
madre(francisca,epifanio).
madre(catalina,jose).
madre(teresa,catalina).
madre(alicia,karen).
madre(alicia,aracely).

%Reglas de relacion de parentesco
% Abuelos
abuelo(X, Y) :- padre(X, Z), (padre(Z, Y); madre(Z, Y)).
abuela(X, Y) :- madre(X, Z), (padre(Z, Y); madre(Z, Y)).

% Bisabuelos y bisabuelas
bisabuelo(X, Y) :- padre(X, Z), abuelo(Z, Y).
bisabuela(X, Y) :- madre(X, Z), abuela(Z, Y).

% Tíos
tio(X,Y) :- (padre(Z, Y); madre(Z, Y)), hermano(X, Z).
tia(X,Y) :- (padre(Z, Y); madre(Z, Y)), hermana(X, Z).

%Hermanos
hermano(X, Y) :-(padre(Z, X), padre(Z, Y);madre(Z, X), madre(Z, Y)), X \= Y.
hermana(X, Y) :-(padre(Z, X), padre(Z, Y); madre(Z, X), madre(Z, Y)), X \= Y.