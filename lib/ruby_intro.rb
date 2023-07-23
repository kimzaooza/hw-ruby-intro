# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
    return 0
    end
      arr.sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
    end
    arr.max(2).sum
end

def sum_to_n? arr, n
  cpms = {}
  arr.each do |em|
    cpm = n - em
    return true if cpms[cpm]
    cpms[em] = true
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
 if s[0] =~ /[b-df-hj-np-tv-z]/i
    return true
  else return false
  end
end

def binary_multiple_of_4? s
  return false unless s.match?(/^[01]+$/)
  number = s.to_i(2)
  number % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN number cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', price)
  end
end
