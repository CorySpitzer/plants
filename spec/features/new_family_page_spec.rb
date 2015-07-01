require 'rails_helper'

describe 'the new family path' do
  it 'visits the new family page' do
    visit new_family_path
    expect(page).to have_content "Add a New Family"
  end

  it 'creates a new family' do
    visit new_family_path
    fill_in 'name', :with => 'Lycopodiopsida'
    click_on 'Create Family'
    expect(page).to have_content 'Lycopodiopsida'
  end
end
