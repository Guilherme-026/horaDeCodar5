programa {
  inteiro opcao, saque, saldo = 3600, deposito, transferencia, receberT, senha
  cadeia nome

  funcao inicio() {

    escreva("Digite o seu nome: ")
    leia(nome)

    escreva("Olá ",nome,", é um prazer ter você por aqui!\n")

    escreva("Me informe a senha da conta bancária: ")
    leia(senha)

    se(senha == 3589){
      iniciar()
    }senao{
      escreva("Senha inválida!\n")
      inicio()
    }
  }
      
    funcao iniciar(){
      
    escreva("1. Saldo\n")
    escreva("2. Extrato\n")
    escreva("3. Saque\n")
    escreva("4. Depósito\n")
    escreva("5. Transferência\n")
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
      escreva("Operação não autorizada.\n")
      saldo()
    }

    limpa()

    escreva("O seu saldo é de R$",saldo,"\n")
    iniciar()
  }

  funcao extrato(){
    escreva("Digite a sua senha: ")
      leia(senha)
    se(senha != 3589){
      escreva("Operação não autorizada.\n")
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
      escreva("Operação não autorizada.\n")
      saque()
    }

    limpa()

     escreva("Quanto você gostaria de sacar? ")
          leia(saque) 

        se(saque > 3600){
          escreva("Operação não autorizada","\n")
        }senao se(saque <= 0){
          escreva("Operação não autorizada","\n")
        }senao se(saque <= 3600 e saque > 0){
          saldo = saldo - saque

        escreva("O saque foi de R$",saque,". Seu saldo atual é de R$",saldo,"\n")
        }
        iniciar()
  }

  funcao deposito(){
    escreva("Digite a sua senha: ")
      leia(senha)
    se(senha != 3589){
      escreva("Operação não autorizada.\n")
      deposito()
    }

    limpa()

     escreva("Qual seria o valor do Depósito? ")
         leia(deposito)
        se(deposito <= 0){
          escreva("Operação não autorizada.")
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
      escreva("Operação não autorizada.\n")
      transferencia()
    }

    limpa()

    escreva("Qual a conta que irá receber essa transferência? ")
          leia(receberT)

          se(receberT != 2807){
            escreva("Operação não autorizada\n")
            transferencia()
          }

            escreva("Qual o valor da transferência que gostaria de realizar? ")
            leia(transferencia)

          se(transferencia > saldo ou transferencia <= 0){
            escreva("Operação não autorizada\n")
            transferencia()
          
          }senao{
            saldo = saldo - transferencia
            escreva("Transferência realizada com SUCESSO!!!\nValor transferido:\nR$",transferencia,"\nSaldo Atual:\nR$",saldo,"\n")
          }
          iniciar()
  }

  funcao sair(){
     escreva(nome," foi um prazer ter você por aqui!")
  }

}

    
