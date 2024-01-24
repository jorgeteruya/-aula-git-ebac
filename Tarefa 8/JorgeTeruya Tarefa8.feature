@Tarefa8
Funcionalidade: Configuração de Produto na EBAC-SHOP

    Cenário: Configurar e adicionar produtos ao carrinho
    Dado que sou um cliente da EBAC-SHOP
    Quando eu acesso a página de um produto
    E eu escolho a cor <cor>
    E eu escolho o tamanho <tamanho>
    E eu seleciono a quantidade <quantidade>
    E eu adiciono o produto ao carrinho
    Então o produto deve ser adicionado ao carrinho com as configurações selecionadas

    Examples:
        | cor      | tamanho | quantidade |
        | azul     | P       | 1          |
        | vermelho | M       | 2          |
        | amarelo  | G       | 3          |

    Cenário: Limpar seleções e voltar ao estado original
        Dado que sou um cliente da EBAC-SHOP com itens no carrinho
        Quando eu seleciono a cor, tamanho e quantidade para um produto
        E eu clico no botão "Limpar"
        Então as seleções de cor, tamanho e quantidade devem ser redefinidas ao estado original

    Cenário: Restrição de quantidade máxima por venda
        Dado que sou um cliente da EBAC-SHOP
        Quando eu adiciono 10 produtos diferentes ao carrinho
        E tento adicionar mais um produto ao carrinho
        Então devo receber uma mensagem informando que o limite máximo de 10 produtos por venda foi atingido


Funcionalidade: Login na plataforma EBAC-SHOP

    Cenário: Login com dados válidos
        Dado que sou um cliente da EBAC-SHOP
        Quando eu tento fazer login com <usuário>, <senha>
        Então devo ser direcionado para a tela de checkout

    Exemplos:
        | usuário | senha |
        | user1   | 123   |
        | user2   | 456   |

    Cenário: Tentativa de login com campo de usuário ou senha inválido
        Dado que sou um cliente da EBAC-SHOP
        Quando eu tento fazer login com <usuário>, <senha> inválido
        Então devo ver uma mensagem de alerta indicando <mensagem>

    Exemplos:
        | usuário | senha | mensagem                   | anotação                          |
        | user1   | 124   | Usuário ou senha inválidos | usuário inválido                  |
        | user3   | 789   | Usuário ou senha inválidos | senha  inválido                   |
        | user1   | 789   | Usuário ou senha inválidos | usuário inválido e senha inválido |


Funcionalidade: Tela de cadastro - Checkout

    Cenário: Cadastro com todos os dados obrigatórios marcados com asteriscos
        Dado que estou na tela de cadastro do checkout
        Quando preencho os campos obrigatórios com os seguintes dados:
        | Campo    | Valor      |
        | Nome     | {nome}     |
        | E-mail   | {email}    |
        | CPF      | {cpf}      |
        | Endereço | {endereco} |
        E clico no botão de cadastrar
        Então devo ser redirecionado para a página de confirmação

    Exemplos:
        | nome         | email                  | cpf            | endereco                    |
        | João Silva   | joao.silva@email.com   | 123.456.789-01 | Rua Exemplo, 123, Cidade    |
        | Maria Santos | maria.santos@email.com | 987.654.321-09 | Avenida Modelo, 456, Cidade |
        | Carlos Lima  | carlos.lima@email.com  | 456.789.012-34 | Travessa Teste, 789, Cidade |

    Cenário: Tentativa de cadastro com e-mail em formato inválido
        Dado que estou na tela de cadastro do checkout
        Quando preencho os campos obrigatórios com os seguintes dados:
        | Campo    | Valor      |
        | Nome     | {nome}     |
        | E-mail   | {email}    |
        | CPF      | {cpf}      |
        | Endereço | {endereco} |
        E clico no botão de cadastrar
        Então devo ver uma mensagem de erro informando sobre o formato inválido do e-mail

    Exemplos:
        | nome         | email             | cpf            | endereco                    |
        | João Silva   | email_invalido    | 123.456.789-01 | Rua Exemplo, 123, Cidade    |
        | Maria Santos | emailinvalido@com | 987.654.321-09 | Avenida Modelo, 456, Cidade |
        | Carlos Lima  | email@sem_arroba  | 456.789.012-34 | Travessa Teste, 789, Cidade |

Cenário: Tentativa de cadastro com campos vazios
Dado que estou na tela de cadastro do checkout
Quando tento cadastrar com campos vazios
E clico no botão de cadastrar
Então devo ver uma mensagem de alerta informando sobre os campos obrigatórios não preenchidos
