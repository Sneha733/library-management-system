class Borrow < ApplicationRecord


    belongs_to :student
    belongs_to :book

    before_create :set_return_date

    def set_return_date
    	self.return_date = self.borrowed_date + MAX_BORROWING_DAYS.days
    end
end


