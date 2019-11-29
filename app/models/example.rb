class Example < ApplicationRecord
  belongs_to :verb

  validates :de, presence: true
end
