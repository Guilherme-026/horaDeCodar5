programa {
  inteiro opcao, saque, saldo = 3600, deposito, transferencia, receberT, senha
  cadeia nome

  funcao inicio() {

    escreva("Digite o seu nome: ")
    leia(nome)

    escreva("Ol� ",nome,", � um prazer ter voc� por aqui!\n")

    escreva("Me informe a senha da conta banc�ria: ")
    leia(senha)

    se(senha == 3589){
      iniciar()
    }senao{
      escreva("Senha inv�lida!\n")
      inicio()
    }
  }
      
    funcao iniciar(){
      
    escreva("1. Saldo\n")
    escreva("2. Extrato\n")
    escreva("3. Saque\n")
    escreva("4. Dep�sito\n")
    escreva("5. Transfer�ncia\n")
    escreva("6. Sair\n")
    escreva("O que gostaria de fazer? \n")
    leia(opcao)

    limpa()

    escolha(opcao){
      caso 1:
        saldo()
      pare
      caso 2:
        extrato()
      pare
      caso 3:
        saque()
      pare
      caso 4: 
        deposito()
      pare
      caso 5:
        transferencia()
      pare
      caso 6:
        sair()
      pare
    }
  }


  funcao saldo(){ 
    escreva("Digite a sua senha: ")
      leia(senha)
    se(senha != 3589){
      escreva("Opera��o n�o autorizada.\n")
      saldo()
    }

    limpa()

    escreva("O seu saldo � de R$",saldo,"\n")
    iniciar()
  }

  funcao extrato(){
    escreva("Digite a sua senha: ")
      leia(senha)
    se(senha != 3589){
      escreva("Opera��o n�o autorizada.\n")
      extrato()
    }

    limpa()

     escreva("Extrato atual:\nR$25.00 - Burguer King - 20:14 20/08/2044\nR$80.79 - FarmaConde - 10:25 18/08/2024\nR$120.00 - Luiz Pipa - 09:30 10/08/2024\n")
     iniciar()
  } 

  funcao saque(){
    escreva("Digite a sua senha: ")
      leia(senha)
    se(senha != 3589){
      escreva("Opera��o n�o autorizada.\n")
      saque()
    }

    limpa()

     escreva("Quanto voc� gostaria de sacar? ")
          leia(saque) 

        se(saque > 3600){
          escreva("Opera��o n�o autorizada","\n")
        }senao se(saque <= 0){
          escreva("Opera��o n�o autorizada","\n")
        }senao se(saque <= 3600 e saque > 0){
          saldo = saldo - saque

        escreva("O saque foi de R$",saque,". Seu saldo atual � de R$",saldo,"\n")
        }
        iniciar()
  }

  funcao deposito(){
    escreva("Digite a sua senha: ")
      leia(senha)
    se(senha != 3589){
      escreva("Opera��o n�o autorizada.\n")
      deposito()
    }

    limpa()

     escreva("Qual seria o valor do Dep�sito? ")
         leia(deposito)
        se(deposito <= 0){
          escreva("Opera��o n�o autorizada.")
        }senao{
          saldo = saldo + deposito
          escreva("Saldo Atual:\nR$",saldo,"\n")
        }
        iniciar()
  }

  funcao transferencia(){
    escreva("Digite a sua senha: ")
    leia(senha)
    se(senha != 3589){
      escreva("Opera��o n�o autorizada.\n")
      transferencia()
    }

    limpa()

    escreva("Qual a conta que ir� receber essa transfer�ncia? ")
          leia(receberT)

          se(receberT != 2807){
            escreva("Opera��o n�o autorizada\n")
            transferencia()
          }

            escreva("Qual o valor da transfer�ncia que gostaria de realizar? ")
            leia(transferencia)

          se(transferencia > saldo ou transferencia <= 0){
            escreva("Opera��o n�o autorizada\n")
            transferencia()
          
          }senao{
            saldo = saldo - transferencia
            escreva("Transfer�ncia realizada com SUCESSO!!!\nValor transferido:\nR$",transferencia,"\nSaldo Atual:\nR$",saldo,"\n")
          }
          iniciar()
  }

  funcao sair(){
     escreva(nome," foi um prazer ter voc� por aqui!")
  }

}

    
