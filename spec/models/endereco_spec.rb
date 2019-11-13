require 'rails_helper'

RSpec.describe Endereco, type: :model do
  context 'validações gerais' do
    it { should validate_presence_of(:cep) }
    it { should belong_to(:cidade)}
    it { should validate_uniqueness_of(:cep) }
  end
end
