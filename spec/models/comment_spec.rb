require 'rails_helper'

RSpec.describe Comment do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_presence_of(:current_status) }
    it { is_expected.to validate_presence_of(:changed_status) }
  end

  describe 'Associations' do
    it { should belong_to(:applicant) }
  end
end
