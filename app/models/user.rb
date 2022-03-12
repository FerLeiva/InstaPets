class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :photos


  # Assign an API key when creating an user
  before_create do |user|
    user.api_key = user.generate_api_key
  end

  # Generate an unique API key
  def generate_api_key
    loop do
      token = Devise.friendly_token
      break token unless User.where(api_key: token).first
    end
  end
  
end
# == Schema Information
#
# Table name: users
#
#  id                     :integer(8)      not null, primary key
#  name                   :string          not null
#  email                  :string          default(""), not null
#  encrypted_password     :string          default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#

