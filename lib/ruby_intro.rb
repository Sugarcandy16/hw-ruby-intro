# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
	sum=0
	if arr!=[]
		1.upto(arr.length) do |i|
			sum=sum+arr[i-1]
		end
	end
	return sum
end

def max_2_sum arr
	sum=0
	max1=-100000
	max2=-100000
	maxind=0
	if arr.length>=1
		1.upto(arr.length) do |i|
			if arr[i-1]>max1
				max1=arr[i-1]
				maxind=i
			end
		end
	end
	if arr.length>1
		1.upto(arr.length) do |i|
			if i!=maxind
				if arr[i-1]>max2
					max2=arr[i-1]
				end
			end
		end
	end
	if arr.length>1
		sum=max1+max2
	elsif arr.length==1
		sum=max1
	else
		sum=0
	end

end

def sum_to_n? arr, n
	ans=false
	if arr.length==0
		ans=false
	elsif arr.length==1
		ans=false
	else
		1.upto(arr.length) do |i|
			(i+1).upto(arr.length) do |j|
				if (arr[i-1]+arr[j-1])==n
					ans=true
				end
			end
		end
	end
	return ans

end

# Part 2

def hello(name)
	return "Hello, "+name
end

def starts_with_consonant? s
	ans=false
	if s=~/^[b-df-hj-np-tv-z]/i
		ans=true
	end
	return ans

end

def binary_multiple_of_4? s
	if s=~/[a-z]/i
		return false
	elsif s=~/[10]/
		if s.to_i(2)%4==0
			return true
		else
			return false
		end
	end
end

# Part 3

class BookInStock
	def initialize(string,price)
		if price<=0
			raise(ArgumentError)
		elsif string==''
			raise(ArgumentError)
		else
			@isbn=string
			@price=price
		end
	end

	def price_as_string
		#@price=@price.round(2)
		"$#{format('%.02f',@price)}"
	end

	def isbn
		@isbn
	end

	def price
		@price
	end

	def isbn=(string)
		@isbn=string
	end

	def price=(price)
		@price=price
	end


end
