winnum = "1234"

def cigar(myticket,winnum)
	myticket = myticket.split("")
	winnum = winnum.split("")
	counter = 0
	myticket.each_with_index do |n, i|
		if n == winnum[i]
			counter += 1
		end
	end
	counter
end


def cigar_array(mytickarray,winnum)
	return_array = []
	mytickarray.each do |ticket|
		return_array.push cigar(ticket, winnum)
	end
return_array
end

def more_tickets(other, winnum)

	end

