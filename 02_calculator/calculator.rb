#write your code here
def add(a,b)
    a + b
end

def sum(a)
    total = 0
    if a.is_a? Array
        a.each {|n| total+=n }
        total
    else
        "ERROR: Not an Array!"
    end
end
def subtract(a,b)
    a - b
end
def multiply(*numbers)
    result = 1
    numbers.each {|n| result *= n}
    result
end

def power(a,b)
    a**b
end

def fact(n)
    result = 1
    until n == 0
        result *= n
        n -= 1
    end
    result
end