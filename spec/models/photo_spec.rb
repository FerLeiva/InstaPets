require 'rails_helper'

RSpec.describe Photo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
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

