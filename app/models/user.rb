class User < ApplicationRecord
  has_secure_password
  validates_presence_of %i[email first_name last_name]
  validates_uniqueness_of %i[email]

  has_many :posts

  def full_name
    "#{first_name} #{last_name}"
  end
end
