@Tarefa8

Funcionalidade: Login na plataforma EBAC-SHOP

    Cenário: Login com dados válidos
        Dado que sou um cliente da EBAC-SHOP
        Quando eu tento fazer login com <usuário>, <senha>
        Então devo ser direcionado para a tela de checkout

    Exemplos:
        |  usuário  |  senha  |
        | "user1"   |  "123"  |
        | "user2"   |  "456"  |

    Cenário: Tentativa de login com campo de usuário ou senha inválido
        Dado que sou um cliente da EBAC-SHOP
        Quando eu tento fazer login com <usuário>, <senha> inválido
        Então devo ver uma mensagem de alerta indicando <mensagem>

    Exemplos:
        |  usuário  |  senha  |   mensagem                   |   anotação                          |
        | "user1"   |  "124"  | "Usuário ou senha inválidos" | "usuário inválido"                  |
        | "user3"   |  "789"  | "Usuário ou senha inválidos" | "senha  inválido"                   |
        | "user1"   |  "789"  | "Usuário ou senha inválidos" | "usuário inválido e senha inválido" |


