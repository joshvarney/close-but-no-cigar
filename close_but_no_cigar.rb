

def cigar(myticket,winnum)
	myticket = myticket.split("")
	winnum = winnum.split("")
	counter = 0
	myticket.each_with_index do |ticket, index|
		unless ticket == winnum[index]
			counter += 1
		end
end
	counter	    
end

def cigar_array(mytickarray,winningtick)
	return_array = []
	mytickarray.each do |ticket|
		return_array << cigar(ticket, winningtick)
	end
  	return_array
end

def winarr(mytickarray,winningtick)
	warr = []
	off_by = []
	winningtick.each do |ticket|
		matches = cigar_array(mytickarray, ticket)
		winners = 0
		matches.each_with_index do |m|
			if m == 0
				winners += 1
			elsif 
				off_by << m
			end 
			  winners
		end
			warr << winners
	end
	warr = warr.sort
	warr << off_by.sort
	warr
end










