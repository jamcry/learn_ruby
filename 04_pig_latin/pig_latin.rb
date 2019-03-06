#write your code here
def translate(s)
    words = s.split(" ")
    vowels = ["a","e","i","o","u"]
    tr_words = []
    words.each do |w|
        if vowels.include? w[0]
            tr_words << w + "ay"
        else #if starts with a consonant
            if w.include? "qu"
                i = w.index("qu")
                if i == 0
                    w = w.slice(i+2,w.length-1) + "quay"
                else
                    w = w.slice(i+2,w.length-1) + (w.slice(0,i+2) + "ay")    
                end
            else
                until vowels.include? w[0]
                    w += w[0]
                    w[0] = ""
                end
                w += "ay"
            end
            
            tr_words << w
        end
    end
    return tr_words.join(" ")
end