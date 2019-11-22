class Kid < ApplicationRecord
  belongs_to :person, optional: true
  
  validates :name, presence: true
  validates :year, presence: true
end
