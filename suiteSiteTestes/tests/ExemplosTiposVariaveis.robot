*** Settings ***
Documentation  Exemplos de tipos de variaveis: simples, lista e dicionarios

*** Variables ***

#Simples
${GLOBAL_SIMPLES}  Vamos ver os tipos de variaveis no robot

#Tipo lista
@{NOMES}           Henrique  Guto  João  Fabio

#Tipo dicionario
&{PESSOA}         nome=Henrique   email=hernqiuedelicia@gmail.com  idade=23   sexo=masculino


*** Test Cases ***
Caso de teste de Exemplo 01
    uma Keyword qualquer 01


*** Keywords ***
Uma Keyword qualquer 01
#Simples
Log   ${GLOBAL_SIMPLES}

#lista
log   Tem que ser Henrique: ${@NOMES[0]} e Ele é amigo de Henrique Fabio: ${@NOMES[3]}

#dicionario
log   Nome: ${PESSOA.nome} e email:${PESSOA.email}
