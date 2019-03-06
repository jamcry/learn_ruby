#write your code here
def echo(msg)
    msg
end

def shout(msg)
    msg.upcase
end

def repeat(msg, count=2)
    message = msg
    (count-1).times {message += " " + msg}
    return message
end

def start_of_word(word, len)
    return word.slice(0,len)
end

def first_word(s, count=1)
    return s.split(" ")[count-1]
end

def titleize(s)
    words = s.downcase.split(" ")
    little_words = ["and","or","the","over"]

    (0...words.length).each do |i|
        word = words[i]
        if (little_words.include? word) and (i != 0)
            words[i] = word.downcase
        else
            words[i] = word.capitalize
        end
    end
    
    return words.join(" ")
end
