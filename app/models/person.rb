class Person < ApplicationRecord
  has_many :kids, dependent: :destroy
  accepts_nested_attributes_for :kids, allow_destroy: true, reject_if: proc {|attr| attr['name'].blank? or attr['year'].blank?}
#  accepts_nested_attributes_for :kids, allow_destroy: true, reject_if: :all.blank?
end

