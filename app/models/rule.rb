class Rule < ApplicationRecord
  has_many :verbs
  
  validates :scheme, presence: true
end
