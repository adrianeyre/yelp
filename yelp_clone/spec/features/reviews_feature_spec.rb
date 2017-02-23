require 'rails_helper'

feature 'reviewing' do
  before do
    sign_up
    create_restaurant
    # Restaurant.create name: 'KFC'
  end
  scenario 'allows users to leave a review using a form' do
     visit '/restaurants'
     click_link 'Review KFC'
     fill_in "Thoughts", with: "so so"
     select '3', from: 'Rating'
     click_button 'Leave Review'

     expect(current_path).to eq '/restaurants'
     click_link 'KFC'
     expect(page).to have_content('so so')
  end

  scenario 'displays an average rating for all reviews' do
    leave_review('So so', '3')
    sign_out
    sign_up("new@test.com")
    leave_review('Great', '5')
    expect(page).to have_content('Average rating: 4')
  end
end
