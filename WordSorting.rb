require "pry"

def wordSorting (sentence)
	#convierte el string en un array
	sentence_array = sentence.split(" ")
	for word in sentence_array
		# chomp elimina el carater si está al final
		word.chomp!(".")
		word.chomp!(",")
		word.chomp!("!")
		word.chomp!("?")
	end
	#ordena el array (especificando que cuando compare sea con las palabras en minúscula, pero sin cambairlas en el original)
	sentence_array.sort {|word_1, word_2| word_1.downcase <=> word_2.downcase}
end

puts "Tell me a sentence."
sentence = gets.chomp
#llama a la función e imprime lo que devuelve
puts wordSorting(sentence)


binding.pry