
program vetor;
var 
    vet:array[0..9] of integer;
    i, j,aux :integer;
    
    //Função para printar o vetor
    procedure mostraVetor ( vetor : array of integer) ;
        var i : integer;
        begin
            for i := 0 to 9 do
            write(vetor[i], ' ');
        end; // Fim 
    
begin // Inicio do main
    // Preenchendo o vetor
    for i := 0 to 9 do
    begin

        writeln('Informe o valor da posição: ', i);
        read(vet[i]); //Lendo valores
    end;
    writeln(' ');
    mostraVetor(vet);
    
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

