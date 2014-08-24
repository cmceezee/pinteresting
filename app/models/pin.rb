# == Schema Information
#
# Table name: pins
#
#  id                 :integer          not null, primary key
#  description        :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  user_id            :integer
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  private            :boolean          default(FALSE)
#  preference         :string(255)
#

class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => 
		{ :medium => "300x300>", :thumb => "100x100>", :large =>"600x600>" }

	has_many :comments

	validates :description, presence: true
	validates :image, presence: true

	def self.public_pins
		self.where(private: false)
	end

	def self.private_pins
		self.where(private: true)
	end
end
