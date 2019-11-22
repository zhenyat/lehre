class Sample < ApplicationRecord
  belongs_to :entry
  
  validates :de, presence: true
  validates :ru, presence: true
end
