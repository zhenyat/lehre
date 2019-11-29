class Verb < ApplicationRecord
  has_many :examples
  accepts_nested_attributes_for :examples, allow_destroy: true, 
    reject_if: proc {|attr| attr['ru'].blank?}
  
  enum aux: %w(hat ist hat/ist)
#  enum kind: %w(starkes schwaches)
  
  validates :infinitive,  presence: true
  validates :prasens,     presence: true
  validates :simple,      presence: true
  validates :participle,  presence: true
  validates :ru,          presence: true
end
