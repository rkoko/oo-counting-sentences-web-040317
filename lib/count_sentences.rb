require 'pry'

class String

 def helper(string, char)
      string[-1] == char
 end

  def sentence?(string = self)
    helper(string, ".")
  end

  def question?(string = self)
    #self[-1] == "?"
    helper(string,"?")
  end

  def exclamation?(string = self)
    #self[-1] == "!"
    helper(string,"!")
  end

  def count_sentences
    counter = 0
    self.split.each do |word|
      binding.pry
      if sentence?(word) || question?(word) || exclamation?(word)
        counter +=1
      end
    end
    counter
  end
end
