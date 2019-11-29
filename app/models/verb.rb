class Verb < ApplicationRecord
  belongs_to :group
  belongs_to :rule
  
  has_many   :examples
  accepts_nested_attributes_for :examples, allow_destroy: true, 
    reject_if: proc {|attr| attr['de'].blank?}
  
  enum aux: %w(hat ist hat/ist)

  validates :infinitive, presence: true
  validates :prasens,    presence: true
  validates :simple,     presence: true
  validates :participle, presence: true
  validates :ru,         presence: true
end
