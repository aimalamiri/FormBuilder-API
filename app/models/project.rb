class Project < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: {maximum: 250, minimum: 2}, uniqueness: true
  validates :description, presence: true
end
