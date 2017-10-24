class Booking < ApplicationRecord
	before_save :calculate_aggrement_amount

	def calculate_aggrement_amount
    	self.aggrement_amount = self.base_fare*self.area
  	end
end
