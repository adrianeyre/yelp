# class Restaurant < ApplicationRecord
#   has_many :reviews, dependent: :destroy
# end

class Restaurant < ActiveRecord::Base
  # has_many :reviews, dependent: :destroy

  # has_many :reviews do
  # def build_with_user(attributes = {}, user)
  #   attributes[:user] ||= user
  #   build(attributes)
  # end

  has_many :reviews,
      -> { extending WithUserAssociationExtension },
      dependent: :destroy

  validates :name, length: { minimum: 3 }, uniqueness: true

  def build_review(attributes = {}, user)
    attributes[:user] ||= user
    reviews.build(attributes)
  end
  
end
