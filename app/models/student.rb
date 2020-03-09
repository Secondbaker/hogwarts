class Student < ApplicationRecord
  belongs_to :House

  validates :name presence: true
end
