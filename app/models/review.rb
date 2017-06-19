# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  review     :text
#  user_id    :integer
#  book_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
end
