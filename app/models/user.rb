# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  username        :text
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true, length: {minimum: 6}
  validates :username, presence: true
  has_many :reviews
  has_many :books
  # ratyrate_rater

end
