class CreateBorrowingRecord < ApplicationRecord
	belongs_to :stud
    belongs_to :library
end
