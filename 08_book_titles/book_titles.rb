class Book
	attr_accessor :title
	
	
	def title 
		little_word = ["a", "the", "an", "and", "or", "nor", "in", "of"]
		words_of_title = @title.split
		capitalized_words = []
		
		words_of_title.each do |word|
			if little_word.include?(word)
				capitalized_words.push(word)
			else
				capitalized_words.push(word.capitalize)
			end
		end
		capitalized_words[0].capitalize!
		capitalized_words.join(" ")
	end
	
	
end