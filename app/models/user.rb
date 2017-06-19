# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :text
#  username   :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
end
