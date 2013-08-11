class Post < ActiveRecord::Base

	has_many :comments

	#validate the title and text attibutes

	validates :title, presence: true,
	                  length: {minimum: 5}

	validates :text, presence: true,
	                  length: {minimum: 5}
end
