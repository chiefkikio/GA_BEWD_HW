# author: Lanya Butler
# BEWD @ GA
# September 2014

=begin
This is a control structure exercise for General Assembly's Ruby on Rails course. 
=end

def temp(n, celsius_flag)
	case celsius_flag
	when "true"
		todays_temperature = n.to_s + " °C"
		todays_temperature_f = n.to_i * 1.8 + 32.0
	else
		todays_temperature = n.to_s + " °F"
		todays_temperature_f = n.to_i
	end

	response = "     hello, the temperatureo is "
	response = response + todays_temperature + "\n"

	# converts from C to F or just run F
	if todays_temperature_f < 0 
		message = "are you sure you aren't dead"
	elsif todays_temperature_f < 15
		message = "burr it's cold"
	elsif todays_temperature_f < 30
		message = "still could snow, this weather sucks"
	elsif todays_temperature_f < 45
		message = "wear a jacket, yo"
	elsif todays_temperature_f < 60
		message = "wear a shirt"
	elsif todays_temperature_f < 75
		message = "it's almost nice out"
	elsif todays_temperature_f < 90
		message = "why is it suddenly so hot?" 
	elsif todays_temperature_f >= 90
		message = "you're melting"
	end

	puts " "
 	puts "     ====== DA WEATHER FORCAST ======="
 	puts " "

 	puts "   \\    /\\"
	puts"    )  ( ')         meow."
    puts "   (  /  )"
 	puts "    \(___)|"
 	puts " "
	puts response + "     Our thoughts: " + message
	puts " "
end

v1 = ARGV[0]
v2 = ARGV[1] 

v1 = -5 unless v1
v2 = false unless v2

temp(v1, v2)
