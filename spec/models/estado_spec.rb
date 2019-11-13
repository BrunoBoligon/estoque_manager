require 'rails_helper'

RSpec.describe Estado, type: :model do
  context 'validações gerais' do
    it { should validate_presence_of(:uf) }
    it { should validate_uniqueness_of(:uf) }
  end
end
