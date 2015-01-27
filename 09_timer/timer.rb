class Timer
	attr_accessor :seconds
	
	def initialize
		@seconds = 0
	end
	
	def time_string 
		hours = seconds/3600
		seconds_left = seconds - (hours*3600)
		minutes = seconds_left/60
		seconds_left = seconds_left - (minutes*60)
		
		if hours<10
			hours_formatted = "0" + hours.to_s
		else
			hours_formatted = hours.to_s
		end
		
		if minutes<10
			minutes_formatted = "0" + minutes.to_s
		else
			minutes_formatted = minutes.to_s
		end
			
		if seconds_left<10
			seconds_formatted = "0" + seconds_left.to_s
		else
			seconds_formatted = seconds_left.to_s
		end
	hours_formatted + ":" + minutes_formatted + ":" + seconds_formatted
	end
end