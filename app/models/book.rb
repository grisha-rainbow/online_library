class Book < ActiveRecord::Base
	validates :title, :description, :image_url, presence: true
	validates :title, uniqueness: true
	validates :image_url, allow_blank:true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}
#	validates :book_url, allow_blank:true, format: {
#		with: %r{\.(pdf)\Z}i,
#		message: 'must be a PDF format'
#	}
end
