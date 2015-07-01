require 'rails_helper'

describe 'the delete family path' do
  it 'deletes a family' do
    family = Family.create(name: 'Green')
    visit family_path(family)
    click_on 'Delete Family'
    expect(page).to have_no_content 'Green'
  end
end
