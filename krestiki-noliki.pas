Program qwe;
Uses crt;
var 
  Field: array [1..3] of array [1..3] of integer;
  i,j,Position:integer; 
Procedure WingameX;
var 
b,v1,v2:integer;
Begin
 case b of
 1:Position[3,1]:='X';
 2:Position[3,2]:='X';
 3:Position[3,3]:='X';
 4:Position[2,1]:='X';
 5:Position[2,2]:='X';
 6:Position[2,3]:='X';
 7:Position[1,1]:='X';
 8:Position[1,2]:='X';
 9:Position[1,3]:='X';
     end;
   end;
begin
  for i:=1 to 3 do
   for j:=1 to 3 do
     write(Position[i,j], ' ');
      writeln();
end;
 if ((Position[1,1]='X') and (Position[1,2]='X') and (Position[1,3]='X')) or ((Position[2,1]='X') and (Position[2,2]='X')  and (Position[2,3]='X')) then
  begin
   v1:=v1+1;
   writeln('Выйграл игрок Х');
  end;
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
  while true do begin
  ShowField();
  Wingame();
  write('Сделайте ход: ');
  read(Position);
  Field[(Position-1)div 3+1,(Position-1) mod 3+1]:=2;
  writeln();
  end;
End.