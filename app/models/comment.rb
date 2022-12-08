class Comment < ApplicationRecord
  validates :body, :current_status, :changed_status, presence: true
  belongs_to :applicant
end
