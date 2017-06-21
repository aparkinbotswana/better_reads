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

belongs_to :user, optional: true
belongs_to :book, optional: true
ratyrate_rateable 'Rating'
end
