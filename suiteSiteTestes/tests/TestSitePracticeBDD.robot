*** Settings ***
Library         SeleniumLibrary
# Suite Setup
# Suite Teardown
Resource         ../resource/Resource.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador
### SETUP roda Keyword antes da suíte ou antes de um teste
### TEARDOWN roda Keyword depois de uma suíte ou um teste

# *** Variables ***

*** Test Cases ***
Cenário 01: Pesquisar produto existente
    Dado que estou na página home do site.
#     Quando eu pesquisar pelo produto "Blouse".
#     Então o produto "Blouse" deve ser listado na página de resultado da busca.
#
# Cenário 02: Pesquisar produto não existente
#   Dado que estou na página home do site.
#   Quando eu pesquisar pelo produto "itemInexistente".
#   Então a página deve exibir a mensagem "No results were found for your search "itemInexistente".
# *** Keywords ***
