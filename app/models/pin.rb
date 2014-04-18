class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :large =>"600x600>" }

	  validates :description, presence: true
	  validates :image, presence: true
end
