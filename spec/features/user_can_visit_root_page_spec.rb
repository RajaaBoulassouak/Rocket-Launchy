require 'rails_helper'

feature 'User can visit root page' do 
  scenario 'they can link to see the launches page' do 
    
    visit '/'
    click_on 'Find the next launch'
    
    expect(current_path).to eq('/launches')
  end 
end 