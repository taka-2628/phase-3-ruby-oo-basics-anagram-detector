# Your code goes here!
require 'pry'

class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(arr)
    arr.filter do |element|
      element.chars.sort == word.chars.sort
    end
  end
end

listen = Anagram.new("listen")
puts listen.match(%w[enlists google inlets banana])
