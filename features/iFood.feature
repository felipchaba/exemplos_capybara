Feature: Acessar os restaurantes e pratos da minha cidade
    Como visitante do site iFood
    Eu posso selecionar a minha cidade sem precisar fazer login
    Eu posso visualizar os restaurantes e pratos disponiveis
    
    @cep
    Scenario: Selecionar cidade
        Given Eu acesso o iFood
        When Eu digito o CEP "14811104"
        Then Eu digito o numero do endereco "255"
        And Eu vejo os restaurantes disponiveis

    Scenario: Ver restaurante
        When Eu acesso o primeiro restaurante
        And Eu vejo o cardapio
        Then Eu seleciono o prato escondidinho
        And Eu escolho a forma de pagamento

    Scenario: Realizar cadastro
        When Eu acesso o cadastro
        Then Eu clico em cadastrar como facebook 
        And Eu digito o ddd "16" e o telefone "1236578"
        Then Eu aceito os termos de uso 
        And Eu clico em cadastrar


  
