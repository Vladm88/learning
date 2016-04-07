Program qwe;
Uses crt;
var 
  Field: array [1..3] of array [1..3] of integer;
  i,j:integer;
  
Procedure ShowField;  
var
  i,j:integer;
Begin
  For i:=1 to 3 do begin
   For j:=1 to 3 do begin
     if Field[i,j]=0 then write('*')
     else if Field[i,j]=1 then write('O')
     else if Field[i,j]=2 then write('X');
    end;
    Writeln();
  end;
end;
    
Procedure ClearField;
var
  i,j:integer; 
Begin
  For i:=1 to 3 do begin
    For j:=1 to 3 do begin
      Field[i,j]:=0;
    end;
  end;
End; 
  
Begin
  ClearField();  
  Field[1,1]:=2;
  Field[2,2]:=1;
  Field[3,3]:=2;
  ShowField();    
   writeln();
  ClearField(); 
  Field[1,1]:=2;
  Field[1,2]:=1;
  Field[1,3]:=2;
  ShowField();
  
End.