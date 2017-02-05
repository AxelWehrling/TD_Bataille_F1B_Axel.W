program Bataille;

uses crt;

const
        max=10;

type
        cellule=record
                ligne,colonne:integer;
        end;

        Tabcell=array[1..max] of cellule;

        bateau=record
                Tabbateau:Tabcell;
        end;

        flotte=record
                Tabflotte:array[1..max] of bateau;
        end;


procedure Creationtab (Var  Position:Tabcell);

var
        i,j:integer;

		
begin
		
	// Je veux creer un tableau sans utiliser un tableau 2D:
    for i:=1 to max do
    begin
		for j:=1 to max do
            begin
                Position[j].ligne:=i;
                Position[j].colonne:=j;
                Gotoxy(Position[i].ligne,Position[j].colonne);
                write('0');
            end;

        writeln;
    end;

end;

//Programm Principal:

var
     Matrice:Tabcell;


BEGIN
        clrscr;

        Creationtab(Matrice);

        readln;

END.

