# Object representing a patient's call list.
class CallListEntry < ApplicationRecord
  acts_as_tenant :fund
  validates_uniqueness_to_tenant :patient, uniqueness: { scope: :user }

  # Relationships
  belongs_to :user
  belongs_to :patient

  # Validations
  validates :order_key, :line, presence: true
  # validates :patient, uniqueness: { scope: :user }
end
