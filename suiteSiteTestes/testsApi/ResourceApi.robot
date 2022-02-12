*** Settings ***
Documentation      Documentação da API: https://fakerestapi.azurewebsites.net/api/v1/Books
Library            Collections
Library            RequestsLibrary

*** Variables ***
...  ${URL_API}         https://fakerestapi.azurewebsites.net/api/v1/

...  &{BOOK_15}      ID=15
...                  title=Book 15
...                  pageCount=1500

*** Keywords ***
Conectar Api
... Create Session    urlBooks    ${URL_API}

Solicitar todos os livros
... ${RESPONSE}   Get Request    urlBooks    Books
... Log    ${RESPONSE.text}
... Set Test Variable    ${RESPONSE}

Requisitar o livro "${ID_LIVRO}"
...  ${RESPONSE}   Get Request    urlBooks    Books/${ID_LIVRO}
...  Log    ${RESPONSE.text}
...  Set Test Variable    ${RESPONSE}

Cadastrar um novo livro
...  &{HEADEARS}   Create Dictionary    content-type=application/json
...  ${RESPONSE}   Post Request    urlBooks    Books
...                               data={
...  "ID": 2001,
...  "title": "teste",
...  "description": "teste",
...  "pageCount": 100,
...  "excerpt": "teste",
...  "publishDate": "2022-02-12T17:14:12.436Z"
...  }
...                               headders=&{HEADEARS}
...  Log    ${RESPONSE.text}
...  Set Test Variable    ${RESPONSE}

Conferir o status code
...  [Arguments]   ${STATUSCODE_DESEJADO}
...  Should Be Equal As Strings    ${RESPONSE.status_code}    ${STATUSCODE_DESEJADO}

Conferir o reason
...  [Arguments]   ${REASON_DESEJADO}
...  Should Be Equal As Strings    ${RESPONSE.reason}    ${REASON_DESEJADO}

Coferir se retorna uma lista com "${QTDE_LIVROS}" livros
...    Length Should Be    ${RESPONSE.json()}    ${QTDE_LIVROS}

# Conferir se retorna todos os dados corretos do livro 15
# ...    Dictionary Should Contain Item    ${RESPONSE.json()}    ID             ${BOOK_15.ID}
# ...    Dictionary Should Contain Item    ${RESPONSE.json()}    title          ${BOOK_15.title}
# ...    Dictionary Should Contain Item    ${RESPONSE.json()}    pageCount      ${BOOK_15.pageCount}
