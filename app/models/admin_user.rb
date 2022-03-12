class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  after_create { |admin| admin.send_reset_password_instructions }

  def password_required?
    new_record? ? false : super
  end

  def to_s
    self.email
  end

end
# == Schema Information
#
# Table name: admin_users
#
#  id                     :integer(8)      not null, primary key
#  email                  :string          default(""), not null
#  encrypted_password     :string          default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#

