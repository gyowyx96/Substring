@dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


##if you want to add a word to the dictionary array##

# def add_word_to_dictionary(string = gets.chomp)
#     @dictionary.push(string.to_s)
# end

##script##
def substring(string=gets.chomp)
    string = string.downcase
    p hash_creation(string)
end

def hash_creation(string)
    hash = Hash.new()
    value = 0 
    @dictionary.each do |word|
        result = string.scan(word).length
        hash[word] = result if result != 0 
        end
    hash
end

substring("going down")
