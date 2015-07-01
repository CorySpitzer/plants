require 'rails_helper'

describe Family do
  it { should validate_presence_of :name }
  it { should have_many :plants}
end
