require 'rails_helper'

RSpec.describe MovimentacaoEstoque, type: :model do

  context 'validações gerais' do
    it { should belong_to(:pessoa) }
    it { should belong_to(:operacao) }
    it { should belong_to(:produto) }
    it { should validate_presence_of(:data) }
    it { should validate_presence_of(:quantidade) }
  end
  
end