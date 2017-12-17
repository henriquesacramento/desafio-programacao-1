require 'rails_helper'

RSpec.describe User, type: :model do
	# FIELDS
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:last_name).of_type(:string) }
  it { should have_db_column(:username).of_type(:string) }

  # VALIDATIONS
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:last_name)}
  it {should validate_presence_of(:username)}

  # TRANSLATIONS
  it_should_behave_like "translate_attribute", attribute: 'name', result: 'Nome'
  it_should_behave_like "translate_attribute", attribute: 'last_name', result: 'Sobrenome'
  it_should_behave_like "translate_attribute", attribute: 'username', result: 'Usuário'
end
