*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}          http://automationpractice.com
${BROWSER}      chrome

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser  about:blank    ${BROWSER}

Fechar navegador
    Close Browser

####Passo a Passo
Acessar a página home do site
    Go to   http://automationpractice.com
    Title Should Be    My Store

Digitar o nome do produto "${produto}" no campo de pesquisa
   Input Text   id=search_query_top    ${produto}
