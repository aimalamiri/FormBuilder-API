class User < ApplicationRecord
  has_secure_password

  has_many :projects
  has_many :forms

  validates :first_name,
            presence: {
              message: "First name field is empty."
            },
            length: {
              maximum: 30
            }
  validates :last_name,
            presence: {
              message: "Last name field is empty."
            },
            length: {
              maximum: 30
            }
  validates :email,
            uniqueness: {
              message: "This email is already registered."
            },
            format: {
              with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/,
              message: "Email invalid"
            }
end
