module FlatBookingHelper
	def get_month_name(month)
		months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
		months[month-1]
	end
end
