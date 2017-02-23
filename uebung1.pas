PROGRAM mketten;

CONST
  size = 127;

TYPE
  HashTable = ARRAY[0..size-1] OF INTEGER;

VAR
  table : HashTable;

  maxMStringCount : INTEGER;


PROCEDURE InitTable;
VAR
  i : INTEGER;
BEGIN
  FOR i := 0 TO High(table) DO BEGIN
    table[i] := 0;
  END;
END;

FUNCTION MinM(s:STRING):INTEGER;
VAR
  i, i_t : INTEGER;
  index : INTEGER;
  counter_diff : INTEGER;

BEGIN
  counter_diff := 0;

  IF s <> '' THEN BEGIN
    FOR i := 1 TO Length(s) DO BEGIN
      index := Ord(s[i]);
      Inc(table[index]);
    END;

    FOR i_t := 0 TO High(table) DO BEGIN
      IF table[i_t] <> 0 THEN BEGIN
        Inc(counter_diff);
      END;
    END;
  END;

  MinM := counter_diff;

END;

FUNCTION MaxMStringLen(s : STRING; m : INTEGER):INTEGER;
VAR
  s_count : STRING;
  counter_i, i, im : INTEGER;
  max_string_length : INTEGER;
BEGIN
  max_string_length := 0;
  
  FOR i := 1 TO Length(s) DO BEGIN  
    s_count := '';
    counter_i := i;



    WHILE counter_i <= Length(s) DO BEGIN
      InitTable;
      
      s_count := s_count + s[counter_i];

      IF MinM(s_count) <= m THEN BEGIN  
        //WriteLn(s_count);
      
        IF Length(s_count) > max_string_length THEN BEGIN
          max_string_length := Length(s_count);
        END;
    
      END;

      Inc(counter_i);

    END;

  END;
  
  MaxMStringLen := max_string_length;
END;


VAR
  s : STRING;
  m : INTEGER;
BEGIN

  s := 'LLLERNEEEENISTSOOOOTOLL';
  m := 3;
  (*WriteLn('Anzahl der unterschiedlichen Zeichen:');
  WriteLn(MinM(s));
  WriteLn('_____________________________________')*)


  WriteLn('String:', s);
  WriteLn('m: ', m);
  WriteLn('Anzahl der maximalen Länge: ', MaxMStringLen(s, m));
  WriteLn('_____________________________________')
END.
