# m-ketten-problem

Definition: Eine Zeichenkette ist eine m-Kette, wenn sie höchstens m unterschiedliche Zeichen enthält. Beispiele: Die drei Zeichenketten a, ab und abcbaac sind 3-Ketten, die Zeichenkette abcd ist aber keine 3-Kette mehr, sondern eine 4-Kette. Eine Zeichenkette s der Länge n ist na- türlich eine n-Kette, von Interesse ist aber das kleinste m für welches die Bedingung aus der De- finition oben für s noch gilt. Entwickeln Sie daher eine möglichst effiziente Funktion

##FUNCTION MinM(s: STRING): INTEGER;

zur Ermittlung des kleinsten m für eine Zeichenkette s.
Gegeben sei eine nichtleere Zeichenkette s und eine ganze Zahl m mit 1 ≤ m ≤ Length(s). Entwickeln Sie eine möglichst effiziente Funktion

##FUNCTION MaxMStringLen(s: STRING, m: INTEGER): INTEGER;

welche die Länge der längsten m-Kette, die als Teilkette in s enthalten ist, liefert.
