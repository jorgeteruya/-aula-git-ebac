@Tarefa8
Funcionalidade: Configuração de Produto na EBAC-SHOP

    Cenário: Configurar e adicionar produtos ao carrinho
    Dado que sou um cliente da EBAC-SHOP
    Quando eu acesso a página de um produto
    E eu escolho a cor <cor>, <tamanho>, <quantidade>
    E eu adiciono o produto ao carrinho
    Então o produto deve ser adicionado ao carrinho com as configurações selecionadas

        Examples:
            | cor        | tamanho | quantidade |
            | "azul"     | "P"     | "1"        |
            | "vermelho" | "M"     | "2"        |
            | "amarelo"  | "G"     | "3"        |

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

