require 'rails_helper'

RSpec.describe Merchant, type: :model do
   # FIELDS
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:address).of_type(:string) }

  # VALIDATIONS
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:address)}

  # TRANSLATIONS
  it_should_behave_like "translate_attribute", attribute: 'name', result: 'Nome'
  it_should_behave_like "translate_attribute", attribute: 'address', result: 'Endereço'

  subject {
    described_class.new(FactoryGirl.attributes_for(:merchant))
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
end
