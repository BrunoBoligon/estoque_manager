class MovimentoService

    def self.fazer_compra(movimento)
        new(movimento).fazer_compra
    end

    def self.fazer_venda(movimento)
        new(movimento).fazer_venda
    end

    def self.devolucao_de_compra(movimento)
        new(movimento).devolucao_de_compra
    end

    def self.devolucao_de_venda(movimento)
        new(movimento).devolucao_de_venda
    end

    def initialize(movimento)
        @data = movimento.data
        @quantidade = movimento.quantidade
        @pessoa = movimento.pessoa
        @operacao = movimento.operacao
        @produto = movimento.produto
    end

    def fazer_compra
        self.movimentacao
    end

    def fazer_venda 
        estoque = Movimento.por_operacao(@produto, Date.today, 2) + #compra
                  Movimento.por_operacao(@produto, Date.today, 3) - #devolucao de venda
                  Movimento.por_operacao(@produto, Date.today, 1) - #venda
                  Movimento.por_operacao(@produto, Date.today, 4) #devolucao de comrpa
                
        self.validar_total_quantidade(estoque)
    end


    def devolucao_de_compra
        estoque = Movimento.por_operacao(@produto, Date.today, 2) #compra

        self.validar_total_quantidade(estoque)
    end

    def devolucao_de_venda
        estoque = Movimento.por_operacao(@produto, Date.today, 1) #venda

        self.validar_total_quantidade(estoque)
    end


    def movimentacao
        Movimento.create(pessoa: @pessoa,
                         operacao: @operacao,
                         data: @data,
                         quantidade: @quantidade,
                         produto: @produto)
    end

    def validar_total_quantidade(estoque)
        if estoque >= @quantidade
            self.movimentacao
        else
            raise StandardError, 'Não tem toda essa quantidade em estoque'
        end
    end
    
end