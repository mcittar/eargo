require 'rails_helper'

RSpec.describe Publication, type: :model do
  it { should validate_presence_of(:logo) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:year) }
end
