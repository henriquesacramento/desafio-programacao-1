require 'rails_helper'

RSpec.describe Customer, type: :model do
  # FIELDS
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:last_name).of_type(:string) }

  # VALIDATIONS
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:last_name)}

  # TRANSLATIONS
  it_should_behave_like "translate_attribute", attribute: 'name', result: 'Nome'
  it_should_behave_like "translate_attribute", attribute: 'last_name', result: 'Sobrenome'

  subject {
    described_class.new(FactoryGirl.attributes_for(:customer))
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
end
