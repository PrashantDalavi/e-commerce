# frozen_string_literal: true

require 'rails_helper'

describe Order do
  context 'when the order has user and product' do
    let(:product) { Product.create!(name: 'race bike') }
    let(:user) { User.create!(email: 'p.d.dalavi@gmail.com', password: 'risingnow1436') }

    it 'is a valid order with user and product' do
      expect(Order.new(user: user, product: product)).to be_valid
    end

    it 'is not valid order without user' do
      expect(Order.new(product: product)).not_to be_valid
    end

    it 'is not valid order without product' do
      expect(Order.new(user: user)).not_to be_valid
    end
  end
end
