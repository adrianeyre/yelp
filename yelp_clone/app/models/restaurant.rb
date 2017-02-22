# class Restaurant < ApplicationRecord
#   has_many :reviews, dependent: :destroy
# end

class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :users
  validates :name, length: { minimum: 3 }, uniqueness: true
end
