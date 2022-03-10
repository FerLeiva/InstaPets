class Photo < ApplicationRecord
	enum license: [:copyright, :copyleft, :creative_commons]
	enum visibility: [:pub, :priv]

	validates :name, :url, :user_id, presence: true
	validates :license, inclusion: { in: Photo.licenses }
	validates :visibility, inclusion: { in: Photo.visibilities }

	validates_with PhotoValidator


	belongs_to :user

end
# == Schema Information
#
# Table name: photos
#
#  id            :integer(8)      not null, primary key
#  name          :string(150)
#  url           :string
#  description   :text            default(""), not null
#  license       :integer(4)      default("0")
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#  admin_user_id :integer(4)
#  visibility    :integer(4)
#

