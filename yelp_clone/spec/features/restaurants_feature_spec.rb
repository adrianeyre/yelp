require 'rails_helper'

feature 'restaurants' do
  context 'sign up' do
    before do
      sign_up
    end

    scenario 'should display a prompt to add a restaurant' do
      visit '/restaurants'
      expect(page).to have_content 'No restaurants yet'
      expect(page).to have_link 'Add a restaurant'
    end

    scenario 'does not let you submit a name that is too short' do
      visit '/restaurants/new'
      fill_in 'restaurant_name', with: 'kf'
      click_button 'Create Restaurant'
      expect(page).not_to have_css 'h2', text: 'kf'
      expect(page).to have_content 'error'
    end

  end

  context 'sign up and create restaurant' do
    before do
      sign_up
      create_restaurant
    end

    scenario 'prompts user to fill out a form, then displays the new restaurant' do
      expect(page).to have_content 'KFC'
      expect(current_path).to eq '/restaurants'
    end

    scenario 'display restaurants' do
      visit '/restaurants'
      expect(page).to have_content('KFC')
      expect(page).not_to have_content('No restaurants yet')
    end

    scenario 'removes a restaurant when a user clicks a delete link' do
      visit '/restaurants'
      click_link 'Delete KFC'
      expect(page).not_to have_content 'KFC'
      expect(page).to have_content 'Restaurant deleted successfully'
    end
  end

  context 'viewing restaurants' do
    let!(:kfc){ Restaurant.create(name:'KFC') }
    scenario 'lets a user view a restaurant' do
     visit '/restaurants'
     click_link 'KFC'
     expect(page).to have_content 'KFC'
     expect(current_path).to eq "/restaurants/#{kfc.id}"
    end
  end

  context 'creating restaurants without signing in' do
    scenario 'does not let you create a restaurant if you are not logged in' do
      visit '/restaurants'
      click_link 'Add a restaurant'
      expect(page).to have_content 'Log in'
    end
  end

  context 'editing restaurants' do
    before do
      sign_up
      create_restaurant
    end
    scenario 'let a user edit a restaurant' do
      visit '/restaurants'
      click_link 'Edit KFC'
      fill_in 'Name', with: 'Kentucky Fried Chicken'
      fill_in 'Description', with: 'Deep fried goodness'
      click_button 'Update Restaurant'
      click_link 'Kentucky Fried Chicken'
      expect(page).to have_content 'Kentucky Fried Chicken'
      expect(page).to have_content 'Deep fried goodness'
    end
  end
end
