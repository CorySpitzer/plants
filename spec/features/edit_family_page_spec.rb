require 'rails_helper'

describe 'the edit family path' do
  it "updates a family" do
    test_family = Family.create( :name => 'Leavesalopia')
    visit family_path(test_family)
    click_on 'Edit Family'
    fill_in 'Name', :with => 'blahiousioloia'
    click_on 'Update Family'
    expect(page).to have_content 'blahiousioloia'
  end
end
