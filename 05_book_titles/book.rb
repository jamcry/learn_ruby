class Book
# write your code here
    attr_accessor :title  
    
    def title
        words = @title.downcase.split(" ")
        little_words = ["and","or","the","over","a","an","in","of"]

        (0...words.length).each do |i|
            word = words[i]
            if (little_words.include? word) and (i != 0)
                words[i] = word.downcase
            else
                words[i] = word.capitalize
            end
        end

        caps_title = words.join(" ")
        return caps_title
    end
end
