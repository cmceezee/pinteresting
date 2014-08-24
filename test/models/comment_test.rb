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

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
