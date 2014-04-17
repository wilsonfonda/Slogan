# Name : Wilson Fonda
# Mission 1 problem

def get_num_process(num)
    if(num>= 1 and num <=100 )
	    ni = STDIN.gets.to_i
	    if(num>1)
	    	result = get_num_integer(ni).to_s + "\n" +get_num_process(num-1)
	    elsif num==1
	    	result = get_num_integer(ni).to_s
	    end
	else
		result = "wrong input"
	end
    return result
end

def get_num_integer(ni)
	if(ni> 0 and ni <=100)
		input = STDIN.gets.chomp
		inputS = input.split(' ')
		sum = count_each_integer(inputS,ni)
	else
		sum = "wrong input"
	end
	return sum
end

def count_each_integer(inputS,ni)
	if(!inputS[ni-1].empty? and inputS[ni-1].to_i>=-100 and inputS[ni-1].to_i<=100)
		input = inputS[ni-1].to_i
		if(ni>1)
			temp = count_each_integer(inputS,ni-1)
			if(input>0)
				sum = (input*input) + temp
			else
				sum = temp
			end
		elsif ni==1
			if(input>0)
				sum = input*input
			else
				sum = 0
			end
		end
	else
		sum = "wrong input"
	end
	return sum
end

print "\n>>>> input <<<<\n\n"
num = STDIN.gets.to_i
str = get_num_process(num)
print "\n\n"
print ">>>> output <<<<\n\n"
print str +"\n"