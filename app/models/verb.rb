class Verb < ApplicationRecord
  belongs_to :group
  belongs_to :rule
  
  has_many   :examples
  has_many   :conjugations

  accepts_nested_attributes_for :examples, allow_destroy: true, 
    reject_if: proc {|attr| attr['de'].blank?}

  accepts_nested_attributes_for :conjugations, allow_destroy: true, 
    reject_if: proc {|attr| attr['present_simple'].blank? or attr['past_simple'].blank? or attr['present_perfect'].blank?}
  
  enum aux: %w(hat ist hat/ist)

  validates :infinitive, presence: true
  validates :prasens,    presence: true
  validates :simple,     presence: true
  validates :participle, presence: true
  validates :ru,         presence: true
end
