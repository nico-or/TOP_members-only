class User < ApplicationRecord
  has_secure_password
  has_many :posts

  def full_name
    "#{first_name} #{last_name}"
  end
end
