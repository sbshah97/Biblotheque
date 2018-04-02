class Book < ActiveRecord::Base
	belongs_to :user
	has_many :book_histories
  validates :title,
            :presence => true
  validates :isbn,
            :presence => true
  validates :description,
            :presence => true
  validates :isbn,
            :presence => true,
            :uniqueness => true

end
