require 'rails_helper'

RSpec.describe MovimentacaoEstoque, type: :model do
  context 'validações gerais' do
    it { should validate_presence_of(:data) }
    it { should validate_presence_of(:quantidade) }
    it { should belong_to(:pessoa) }
    it { should belong_to(:operacao) }
    it { should belong_to(:produto) }
    
  end

  context 'Não pode' do
    let(:grupo) {GrupoProduto.new(nome: 'Borracharia')}
    let(:unidade) {Unidade.new(descricao: 'Pneus', sigla: 'P')}

    let(:pessoa) {Pessoa.new(nome: 'Bruno',
                            documento: 231412)}
    let(:operacao) {Operacao.new(nome: 'Venda de teste',
                                tipo: 1)}
    let(:produto) {Produto.new(nome: 'Produto de teste',
                                unidade: unidade,
                                grupo_produto: grupo)}

    let (:mov) {MovimentacaoEstoque.new(data: Date.today,
                                        quantidade: 100,
                                        pessoa: pessoa,
                                        operacao: operacao,
                                        produto: produto)}

    it 'salvar letras na quantidade' do
      mov.quantidade = 'a'
        expect(mov).to_not be_valid
    end

    it 'salvar quantidade negativa' do
      mov.quantidade = -10
      expect(mov).to_not be_valid
    end

  end
end
