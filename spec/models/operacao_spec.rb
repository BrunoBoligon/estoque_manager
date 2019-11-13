require 'rails_helper'

RSpec.describe Operacao, type: :model do
  context 'validações gerais' do
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:tipo) }
  end
end