Algoritmo "JOGODAVELHA"
procedimento preencherMatriz()
inicio
   //PRIMEIRO PASSO FAZER O PROCEDIMENTO
   Para i de 1 ate 3 faca
      Para j de 1 ate 3 faca
         cont<- cont + 1
         jogo[i,j] <- numpcarac(cont)
      FimPara
   FimPara
fimprocedimento
//---------------------------------------------------------------------
Procedimento velha()
inicio
   EscrevaL("=====================")
   EscrevaL
   EscrevaL("    JOGO DA VELHA")
   EscrevaL
   //EscrevaL("|     |     |     |")
   EscrevaL("+-----+-----+-----+")
   Para i de 1 ate 3 faca
      Para j de 1 ate 3 faca
         Escreva("| ")
         Escreva(jogo[i,j]:4)
      Fimpara
      Escreva("| ")
      EscrevaL()
      EscrevaL("+-----+-----+-----+")

   Fimpara
   EscrevaL()
   EscrevaL("=====================")
   EscrevaL()


FimProcedimento
//---------------------------------------------------------------------
Procedimento jogar()
Inicio
   x <-"X"
   vencedor <- falso
   vez <- 0
   par <- 1
   Repita
      EscrevaL("Digite um valor para ",x," :")
      Leia(op)
      Se (op > 0) e (op<10) entao
         //------------------------------------------------------
         //LINHA 1
         Se(op >0) e (op <4) entao
            L <-1
            Se (jogo[L,op] = "X") ou (jogo[L,op] = "O") entao
               EscrevaL("Esse numero já está preenchido")
               EscrevaL("OPÇÃO INVÁLIDA")
               EscrevaL("Aperte enter para continuar")
               Leia(a)
            Senao
               jogo[L,op] <- x
               codrepetido()
            FimSe

            //---------------------------------------------------------
            //LINHA 2

         Senao
            Se (op >3) e (op <7)entao
               L <-2
               Se (jogo[L,op-3] = "X") ou (jogo[L,op-3] = "O")entao
                  EscrevaL("Esse numero já está preenchido")
                  EscrevaL("OPÇÃO INVÁLIDA")
                  EscrevaL("Aperte enter para continuar")
                  Leia(a)
               Senao
                  jogo[L,op-3] <- x
                  codrepetido()
               FimSe

               //------------------------------------------------------------
               //LINHA 3

            Senao
               L <- 3
               Se (jogo[L,op-6] = "X") ou (jogo[L,op-6] = "O")entao
                  EscrevaL("Esse numero já está preenchido")
                  EscrevaL("OPÇÃO INVÁLIDA")
                  EscrevaL("Aperte enter para continuar")
                  Leia(a)
               senao
                  jogo[L,op-6] <- x
                  codrepetido()
               FimSe
               //----------------------------------------------------

            FimSe
         Fimse

      Senao
         EscrevaL("OPÇÃO INVÁLIDA")
         EscrevaL("Aperte enter para continuar")
         Leia(a)
      FimSe
      limpatela
      velha()

   Ate(vencedor = verdadeiro) ou (vez = 9)
   Se(vencedor = verdadeiro) entao
      EscrevaL("O jogador ",x," venceu")
   senao
      EscrevaL("DEU VELHA")
   FimSe
FimProcedimento
//----------------------------------------------------------------------
procedimento codrepetido()
Inicio
   vencedor <- verificarVencedor()
   //Uma função que ira verificar que o jogador já venceu ou não
   vez <- vez + 1
   Se (vencedor = falso) entao
      Se (par % 2 <> 0 ) entao
         //Se for impar
         x <- "O"
      Senao
         x <- "X"
      Fimse
      par <- par + 1
      //para incrementar para a proxima rodada
   FimSe
FimProcedimento
//------------------------------------------------------------
funcao verificarVencedor(): logico //V ou F
var
   venceu : logico
Inicio
   venceu <- falso


   //horizontal
   Para i de 1 ate 3 faca
      Se ((jogo[i,1] = jogo[i,2]) e (jogo[i,2] = jogo[i,3])) entao
         venceu <- verdadeiro
      FimSe
   FimPara

   //vertical
   Para i de 1 ate 3 faca
      Se ((jogo[1,i] = jogo[2,i]) e (jogo[2,i] = jogo[3,i])) entao
         venceu <- verdadeiro
      FimSe
   FimPara

   //Diagonal 1
   Se (jogo[1,1] = jogo[2,2]) e (jogo[2,2] = jogo[3,3]) entao
      venceu <- verdadeiro
   FimSe
   //Diagolnal 2
   Se (jogo[1,3] = jogo[2,2]) e (jogo[2,2] = jogo[3,1]) entao
      venceu <- verdadeiro
   FimSe

   retorne venceu

FimFuncao
//-------------------------------------------------------
Var
   i,j,cont:inteiro
   jogo : vetor[1..3,1..3] de caractere
   x : caractere//ONDE IRA GUARDA o X & 0
   L,op: inteiro
   vencedor: logico
   vez : inteiro
   par : inteiro
   a,s,n :caractere
   continua:caracter


Inicio
continua <- "s"
 enquanto continua = "s" faca
 timer (0)
 limpatela
   cont <- 0
   preencherMatriz()//1° procedimento
   velha()//2° procedimento
   jogar()//3° procedimento
   escreval("Deseja continuar? S/N")
   leia(continua)
   fimenquanto
   

   





Fimalgoritmo