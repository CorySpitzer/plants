require 'rails_helper'

describe Plant do
  it { should validate_presence_of :name}
  it { should validate_presence_of :image_url}
end
