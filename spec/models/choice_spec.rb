require "rails_helper"

RSpec.describe Choice, :type => :model do
  let(:yoga) { Choice.create!(title: 'yoga', cost: 2) }
  it 'has a title' do
    expect(yoga.title).to eq('yoga')
  end

  it 'has a cost' do
    expect(yoga.cost).to eq(2)
  end
  context 'when a cost is not given' do
    let(:hugs) { Choice.create!(title: 'hugs') }
    it 'defaults to free, unless a cost is given' do
      expect(hugs.cost).to eq(0)
    end
  end
end
