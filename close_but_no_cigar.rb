def cigar(myticket,winningtick)
	myticket = myticket.split("")
	winningtick = winningtick.split("")
	counter = 0
	myticket.each_with_index do |ticket, index|
		unless ticket == winningtick[index]
			counter += 1
		end
	end
	counter	    
end

def cigar_array(mytickarray,winningtick)
	return_array = Array.new
	mytickarray.each do |ticket|
	return_array << cigar(ticket, winningtick)
	end
  	return_array
end

def winarr(mytickarray,winningtick)
	warr = Array.new
	off_by = Array.new
	winningtick.each do |ticket|
		matches = cigar_array(mytickarray, ticket)
		winners = 0
		matches.each_with_index do |m|
			if m == 0
				winners += 1
			else 
				off_by << m
			end
		end
		warr << winners
	end
	off_by = off_by.sort
	warr = warr.sort
	new_arr = Array.new
	new_arr << warr
	new_arr << off_by
	new_arr
end










