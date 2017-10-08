require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:my_choice) { Choice.create!(title: 'nail art') }
  let(:my_order) { Order.create!(choice: my_choice, total: my_choice.cost) }
  it 'holds a choice' do
    expect(my_order.choice).to be_a(Choice)
  end
end
