require 'rails_helper'

RSpec.describe Product, type: :model do
  # FIELDS
  it { should have_db_column(:description).of_type(:string) }
  it { should have_db_column(:price).of_type(:decimal) }

  # VALIDATIONS
  it {should validate_presence_of(:description)}
  it {should validate_presence_of(:price)}

  # TRANSLATIONS
  it_should_behave_like "translate_attribute", attribute: 'description', result: 'Descrição'
  it_should_behave_like "translate_attribute", attribute: 'price', result: 'Preço'

  # RELATIONSHIPS
  it { should belong_to(:merchant) }

  subject {
    described_class.new(FactoryGirl.attributes_for(:product))
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
end
