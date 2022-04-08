class Circle < ApplicationRecord
  has_many :members
  has_and_belongs_to_many :users
end
