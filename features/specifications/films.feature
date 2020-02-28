# language: pt

@films @get
Funcionalidade: Buscar Filmes
    Como usuário da API
    Eu quero poder buscar por filmes
    A fim de visualizar suas informações

@success
Cenário: Buscar e armazenar títulos de filmes
    Dado o endpoint da API para buscar filmes
    Quando eu listar todos os filmes
    Então eu armazeno os títulos
    E recebo o statusCode 200