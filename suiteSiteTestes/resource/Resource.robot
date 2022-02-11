*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}          http://automationpractice.com
${BROWSER}      chrome

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser  about:blank    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser

####Passo a Passo
Acessar a página home do site
    Go to   http://automationpractice.com
    Title Should Be    My Store

Digitar o nome do produto "${produto}" no campo de pesquisa
   Input Text   name=search_query    ${produto}

Clicar no botão Pesquisar
  Click Element    name=submit_search

Conferir se o produto "${produto}" foi listado no site
  Wait Until Element Is Visible    css=#center_column > h1
  Title Should Be     Search - My Store

Conferir mensagem de erro "No results were found for your search "${MENSAGEM_ALERTA}""
  Wait Until Element Is Visible       css=#center_column > h1
  Element Text Should Be     //*[@id="center_column"]/p
