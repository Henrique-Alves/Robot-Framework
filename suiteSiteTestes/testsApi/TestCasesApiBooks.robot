*** Settings ***
Documentation      Documentação da API: https://fakerestapi.azurewebsites.net/api/v1/Books
Resource           ../testsApi/ResourceApi.robot
Suite Setup        Conectar Api

*** Test Case ***
Buscar a lsitagem de todos os livros (GET em todos os livros)
...    Conferir o status code    200
...    Conferir o reason     OK
...    Coferir se retorna uma lista com "200" livros

Buscar um livro especifico (GET em um livro especifico)
...    Requisitar o livro "15"
...    Conferir o status code    200
...    Conferir o reason     OK
# ...    Conferir se retorna todos os dados corretos do livro 15

Cadastrar um livro (POST)
...  Cadastrar um novo livro
