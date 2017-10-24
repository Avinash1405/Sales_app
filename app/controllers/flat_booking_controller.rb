class FlatBookingController < ApplicationController
	def reports
		if(params[:startDate].present? && params[:endDate].present? && params[:type].present? && (["monthly","yearly"].include?(params[:type])))
			
			start_date = Date.strptime(params[:startDate],"%m/%d/%Y")
			end_date = Date.strptime(params[:endDate],"%m/%d/%Y")
			
			if(params[:type] == "yearly")
				@bookings = Booking.select("sum(aggrement_amount) as value,YEAR(created_at)as year").where(created_at: start_date..end_date).group('YEAR(created_at)').order(created_at: :asc)
			else
				@bookings = Booking.select("sum(aggrement_amount) as value,YEAR(created_at) as year,MONTH(created_at) as month").where(created_at: start_date..end_date).group('CONCAT(MONTH(created_at),"-",YEAR(created_at))').order(created_at: :asc)
			end
			respond_to do |format|
				format.js 
				format.html
			end
		else
			respond_to do |format|
				format.js {flash[:error] = "Invalid parameters"}
				format.html
			end	
		end
	end
end
