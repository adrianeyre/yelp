require 'rails_helper'

describe User, type: :model do
  xit { is_expected.to have_many :reviewed_restaurants}
end
