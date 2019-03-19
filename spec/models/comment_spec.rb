# frozen_string_literal: true

require 'rails_helper'

describe Comment do
  context 'when the product has comments' do
    let(:product) { Product.create!(name: 'race bike') }
    let(:user) { User.create!(email: 'p.d.dalavi@gmail.com', password: 'risingnow1436') }
    before do
      product.comments.create!(rating: 1, user: user, body: 'Awful bike!')
      product.comments.create!(rating: 3, user: user, body: 'Ok bike!')
      product.comments.create!(rating: 5, user: user, body: 'Great bike!')
    end

    it 'is not valid without a body' do
      expect(Comment.new(rating: 1, user: user)).not_to be_valid
    end

    it 'is not valid without a user' do
      expect(Comment.new(rating: 1, body: 'Awful bike!')).not_to be_valid
    end

    it 'is not valid without a rating' do
      expect(Comment.new(user: user, body: 'Awful bike!')).not_to be_valid
    end
  end
end
