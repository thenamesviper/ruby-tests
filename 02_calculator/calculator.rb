def add(x,y) 
	x + y
end

def subtract(x,y)
	x-y
end

def sum(array_of_numbers)
	start = 0
	sum = 0
	
	while start<array_of_numbers.length do
		sum = array_of_numbers[start] + sum
		start = start+1
	end
	
	sum
end

def multiply(array_of_numbers)
	start = 0
	product = 1
	
	if start==array_of_numbers.length
		product = 0
	else 
		product = 1
		while start<array_of_numbers.length do
			product = array_of_numbers[start] * product
			start = start + 1
		end
	end
	
	product
end

def power(x,y)
	x**y
end
	
def factorial number 		
	total = 1
	if number>1 
		while number>1 do
			total = total*number
			number = number - 1
		end
	end
	total
end
			
	