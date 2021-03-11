program vetor;
var 
    vet:array[0..9] of integer;
    i, j,aux, num :integer;
    num_rep : boolean;
    
    //Função para printar o vetor
    procedure mostraVetor ( vetor : array of integer) ;
        var i : integer; //Local
        begin
            for i := 0 to 9 do
            write(vetor[i], ' ');
        end; // Fim 

// Inicio do main 
begin 

    // Preenchendo o vetor
    for i := 0 to 9 do
    begin
    
        num_rep := true;
        while num_rep do
        begin
            writeln('Informe o valor da posição: ', i);
            read(vet[i]); //Lendo valores
            num := vet[i];
            num_rep := false;
            
            for j:=0 to (i-1) do
            begin
                if num = vet[j] then
                begin
                    writeln('Este valor ja existe. Informe outro: ');
                    num_rep := true;
                end;
            end;
        end;
    end;
    writeln(' ');
    mostraVetor(vet);
    
    // Ordenando os valores em vet
    for i:= 0 to 9 do
    begin
        for j:=0 to 9 do
        begin
            
            if vet[i] < vet[j] then
            begin
                aux := vet[i];
                vet[i] := vet[j];
                vet[j] := aux;
            end;
        end;
    end;
    
    writeln;
    write('Vetor Organizado: ');
    mostraVetor(vet);
    writeln;
    writeln('Segundo maior numero do vetor: ', vet[8]);
    
end.

