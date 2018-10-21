require 'rails_helper'

feature 'User can visits launches index page' do 
  scenario 'they see upcoming launches and their information' do
  
    visit '/launches'
  
    within(first(".launch")) do    
      expect(page).to have_css(".name")
      expect(page).to have_css(".date")
      expect(page).to have_css(".rocket_name")
    end
  end
end 