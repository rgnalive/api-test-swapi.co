# language: pt

@planets @get
Funcionalidade: Buscar Planetas
    Como usuário da API
    Eu quero poder buscar por planetas
    A fim de visualizar suas informações

@error
Cenário: Buscar planetas passando um count acima do existente
    Dado o endpoint da API para buscar planetas
    E eu listar todos os planetas
    E eu armazenar o count de registros da resposta
    Quando eu buscar um planeta, passando um id aleatório e maior do que o count armazenado
    Então recebo a mensagem "Not found"
    E recebo o statusCode 404