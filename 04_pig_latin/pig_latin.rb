def translate word
	vowels = ["a", "e", "i", "o", "u"]
	
	array_of_words = word.split
	index = 0
	new_array = []
	
	array_of_words.each do |word|
		if vowels.include?(word[0])
			new_word = word + "ay"
		else
			if vowels.include?(word[1]) and word[1] != "u"
				new_word = word[1..(word.length-1)] + word[0] + "ay"
			else
				if vowels.include?(word[2]) and word[2] != "u"
					new_word = word[2..(word.length-1)] + word[0..1] + "ay"
				else
					new_word = word[3..(word.length-1)] + word[0..2] + "ay"
				end	
			end
		end
		new_array.push(new_word)
	end
	new_array.join(" ")
end	
