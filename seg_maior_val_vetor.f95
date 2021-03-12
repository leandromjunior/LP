PROGRAM Seg_Maior_Valor_Vetor

INTEGER vet(10)
INTEGER i, j, aux, num, boolean


PRINT *, 'Informe os valores'

do i=1, 10
    boolean = 1
    do while (boolean == 1) !Se boolean for 1, entra no while
        read *, vet(i)
        num = vet(i)
        boolean = 0 !Joga a variavel pra false
        
        !Verificando se o valor digitado é repetido
        do j=1, (i-1)
            if(num == vet(j)) then
                print*, "Este valor já existe. Informe outro"
                boolean = 1
            endif
        end do
    end do
end do

! Ordenando o vetor em ordem crescente
do i=1, 10
    do j=1, 10
        if (vet(i) < vet(j)) THEN
            aux = vet(i)
            vet(i) = vet(j)
            vet(j) = aux
        endif
    end do
end do

PRINT *, "Vetor:"
PRINT*, vet

PRINT *, "Segundo maior valor do vetor:"
PRINT*, vet(9)
end
