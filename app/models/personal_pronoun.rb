class PersonalPronoun < ApplicationRecord
#  has_many  :conjugations
  
  validates :de, presence: true
  validates :en, presence: true
  validates :ru, presence: true
end
