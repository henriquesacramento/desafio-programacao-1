RSpec.shared_examples 'translate_attribute' do |options|
  let!(:attribute){ options[:attribute] }
  let!(:locale)   { options[:locale] || I18n.default_locale }
  let!(:result)   { options[:result] }

  it { expect(described_class.human_attribute_name(attribute)).to eq(result) }
end