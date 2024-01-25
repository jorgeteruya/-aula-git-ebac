 @Tarefa8

    Funcionalidade: Tela de cadastro - Checkout

    Cenário: Cadastro com todos os dados obrigatórios marcados com asteriscos
        Dado que estou na tela de cadastro do checkout
        Quando preencho os campos obrigatórios com os seguintes dados:
        | Campo    | Valor      |
        | Nome     | {nome}     |
        | E-mail   | {email}    |
        | CPF      | {cpf}      |
        | Endereço | {endereco} |
        Então clico no botão de cadastrar e devo ser redirecionado para a página de confirmação

        Exemplos:
        | nome           | email                    | cpf              | endereco                      |
        | "João Silva"   | "joao.silva@email.com"   | "123.456.789-01" | "Rua Exemplo, 123, Cidade"    |
        | "Maria Santos" | "maria.santos@email.com" | "987.654.321-09" | "Avenida Modelo, 456, Cidade" |
        | "Carlos Lima"  | "carlos.lima@email.com"  | "456.789.012-34" | "Travessa Teste, 789, Cidade" |

    Cenário: Tentativa de cadastro com e-mail em formato inválido
        Dado que estou na tela de cadastro do checkout
        Quando preencho os campos obrigatórios com os seguintes dados:
        | Campo    | Valor      |
        | Nome     | {nome}     |
        | E-mail   | {email}    |
        | CPF      | {cpf}      |
        | Endereço | {endereco} |
        Então clico no botão de cadastrar e devo ver uma mensagem de erro informando sobre o formato inválido do e-mail

        Exemplos:
        | nome           | email               | cpf              | endereco                      |
        | "João Silva"   | "email_invalido"    | "123.456.789-01" | "Rua Exemplo, 123, Cidade"    |
        | "Maria Santos" | "emailinvalido@com" | "987.654.321-09" | "Avenida Modelo, 456, Cidade" |
        | "Carlos Lima"  | "email@sem_arroba"  | "456.789.012-34" | "Travessa Teste, 789, Cidade" |

    Cenário: Tentativa de cadastro com campos vazios
        Dado que estou na tela de cadastro do checkout
        Quando tento cadastrar com campos vazios e clico no botão de cadastrar
        Então devo ver uma mensagem de alerta informando sobre os campos obrigatórios não preenchidos
