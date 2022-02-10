*** Settings ***
# Library    SeleniumLibrary
Resource         ../resource/Resource.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador

# *** Variables ***

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site
    Digitar o nome do produto "Blouse" no campo de pesquisa
#     Clicar no botão Pesquisar
#     Conferir se o produto "Blouse" foi listado no site.
#
# Caso de Teste 02: Pesquisar produto não existente
#   Acessar a página home do site.
#   Digitar o nome do produto "itemInexistente" no campo de pesquisa.
#   Clicar no botão Pesquisar
#   Conferir mensagem de erro "No results were found for your search "itemInexistente""
# *** Keywords ***
