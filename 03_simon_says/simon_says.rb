def echo phrase
	phrase
end

def shout phrase 
	phrase.upcase
end

def repeat (phrase, number_of_times = 2)
	(phrase + " ") * (number_of_times -1) + "" + phrase #space after all but last iterations
end

def start_of_word(word, number_of_letters)
	spaces = number_of_letters -1
	word[0..spaces]
end

def first_word phrase
	start = 0
	first_space = 0
	while start < phrase.length do  #probably not the best way to do this
		if(phrase[start] == " ")
			first_space = start
			start = phrase.length
		end
		start = start +1
	end
	phrase[0..(first_space-1)]
end

def titleize phrase
	array_of_words = phrase.split
	array_of_little_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and","as",
							"over","but", "it", "or", "nor"]#Partial list of words usually not capitalized
	new_array =[]
	array_of_words.each do |word|
	
		if array_of_little_words.include?(word)
			new_array.push(word)
		else
			new_array.push(word.capitalize)
		end
	end
	new_array[0].capitalize!
	new_array.join(" ")
end