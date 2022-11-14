@dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


##if you want to add a word to the dictionary array##

# def add_word_to_dictionary(string = gets.chomp)
#     @dictionary.push(string.to_s)
# end

##script##
def substring(string=gets.chomp)
    p hash_creation(string_scanner(string))
end


def string_scanner(string)
    arr =[]
    
    ##scanning the sting in as much as possible way ##

    arr.push(string.scan(/./))
    arr.push(string.scan(/(.)(...)/))
    arr.push(string.scan(/(.)(..)(...)/))
    arr.push(string.scan(/\w+/))
    arr.push(string.scan(/.../))
    arr.push(string.scan(/(..)/))
    arr = arr.flatten.map{|string| string.strip}
end

def hash_creation(arr)
    hash = Hash.new()
    value = 0 
    arr.each do |string|
        if @dictionary.include?(string)
            hash[string] = value+1
        end
    end
    hash
end

substring()
