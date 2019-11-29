class Group < ApplicationRecord
  has_many :verbs

  validates :en,   presence: true
  validates :de,   presence: true
end
