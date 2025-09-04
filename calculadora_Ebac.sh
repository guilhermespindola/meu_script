#!/usr/bin/env python3 

#Boas vindas ao usuario
print('Bem-vindo ao Cosmólogo Calculista da Sorte!')
print('Aqui você descobre se está com SORTE ou AZAR em diferentes operações matemáticas!\n')

while True:
    nome = input('Seu nome completo: ')
    dia = int(input('Seu dia de nascimento: '))
    mes = int(input('Seu mês de nascimento: '))
    ano = int(input('Seu ano de nascimento: '))

    type = {nome}

# OPERAÇÕES

    print("\nEscolha a operação desejada:")
    print("1. Soma")
    print("2. Subtração")
    print("3. Multiplicação")
    print("4. Divisão")

    escolha = input("Digite o número da operação desejada (1/2/3/4): ")

    resultado = None  # VARIAVEL

    if escolha == '1':
        resultado = dia + mes + ano
        print(f"{nome}, o resultado da soma é: {resultado}")
    elif escolha == '2':
        resultado = dia - mes - ano
        print(f"{nome}, o resultado da subtração é: {resultado}")
    elif escolha == '3':
        resultado = dia * mes * ano
        print(f"{nome} o resultado da multiplicação é: {resultado}")
    elif escolha == '4':
        if mes != 0 and ano != 0:
            resultado = dia / mes / ano
            print(f"{nome}, o resultado da divisão é: {resultado}")
        else:
            print("f{nome}, não é possível dividir por zero!")
    else:
        print("Opção inválida!")

    # VARIAVEL AZAR OU SORTE

    if resultado is not None:
        if 345500 <= resultado <= 753300:
            print(f"🔮 Você {nome}, tem SORTE!")
        elif 300000 <= resultado < 345500:
            print(f"⚠️ Você {nome}, é AZARADO!")
        elif 0 <= resultado < 300000:
            print(f"🍀 Você {nome}, é SORTUDO!")
        elif resultado < 0:
            print(f"💀 {nome}, resultado negativo... sem sorte ou azar definido.")

    continuar = input("\nDeseja tentar novamente? (Sim ou N): ")
    if continuar.lower() != 's':
        print("\nObrigado por usar o Cosmólogo Calculista da Sorte! 🌠")
        break
