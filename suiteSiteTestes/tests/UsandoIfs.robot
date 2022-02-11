*** Settings ***
Documentation    suíte para exemplificar o uso de IF nos testes
                 O IF deve ser pouco utilizado, mas tem hora que não
                 tem  jeito e precisamos dele mesmo, então vamos ver
                 como é! IF: use com moderação

*** Variables ***
@{FRUTAS}    maça  banana  uva   abacaxi

*** Keywords ***
Rodando uma Keyword dada uma condição = true
    Run Keyword If    '${FRUTAS[1]}' == 'banana'     log  O item  número 1 é a banana!!

Rodando uma Keyword dada uma condição = false
    Run Keyword If     '${FRUTAS[1]}' == 'maça'      log  O item  número 1 não é uma maça!!

Armazenando um valor em uma variável dada uma condição
    ${VAR}    Set Variable If    '${FRUTAS[2]}' == 'uva'    uva
    log       Minha variável VAR é uma  ${VAR}!!
