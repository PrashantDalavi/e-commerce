# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true
  has_many :comments
  def self.search(search_term)
    if Rails.env.production?
      Product.where('name ilike ?', "%#{search_term}%")
    else
      Product.where('name LIKE ?', "%#{search_term}%")
    end
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end
end
