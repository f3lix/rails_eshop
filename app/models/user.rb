# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  session_token   :string(255)
#  admin           :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  has_many :orders
  attr_accessible :email, :name, :password, :password_confirmation, :gender, :age, :phone_number, :address, :post_code
  has_secure_password

  before_save { |user| user.email = email.downcase }

  before_save :create_session_token

  validates :name, presence: true, length: { maximum: 50 }

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }
  validates :password, presence: true

  private
  def create_session_token
  	self.session_token = SecureRandom.urlsafe_base64
  end
end
