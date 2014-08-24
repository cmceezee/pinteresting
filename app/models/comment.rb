# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user_name  :string(255)
#  body       :text
#  pin_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base

	belongs_to :pin
	
end
