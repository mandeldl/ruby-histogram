# Get input
puts "Give me some text"
text = gets.chomp

# Create an array out of the text variable
words = text.split

# Create a new hash, give it default value of 0
frequencies = Hash.new(0)

# iterate over words array: words.each
# for each word we find, assume the word is a key in frequencies: {|word| frequencies[word]
# and increment its value by one: +=1
words.each {|word|
    frequencies["#{word}"] +=1
    }
    
# sort the frequencies array by word count:
frequencies = frequencies.sort_by {|word, count|
    count
    }
# Use reverse to reverse the sorted frequencies array:
frequencies.reverse!

# Iterate over each key/value pair in frequencies hash,
# Then, puts each word, a single space, and its frequency to the console.
frequencies.each {|key, value|
puts "#{key} #{value}"
}