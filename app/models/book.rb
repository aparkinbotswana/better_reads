# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  series_title :text
#  book_title   :text
#  author       :text
#  year         :integer
#  description  :text
#  image        :text
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Book < ApplicationRecord
end
