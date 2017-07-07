require 'rails_helper'

RSpec.describe Publication, type: :model do
  let!(:publication) { FactoryGirl.create(:publication) }

  it { should validate_presence_of(:logo) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:year) }

  describe "date validator" do
    it "should reject non-date strings" do
      publication.year = "BAD STRING"
      expect(publication).to_not be_valid
    end
    it "should reject incorrect dates" do
      publication.year = "05202017 00:00:00"
      expect(publication).to_not be_valid
    end
    it "should accept correctly formatted dates" do
      publication.year = DateTime.now
      expect(publication).to be_valid
    end
  end
end
