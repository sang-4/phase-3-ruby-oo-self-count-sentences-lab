require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences

   sentences = 0
   punctuation = [".", "?", "!"]
    self.split(" ").each do |word|
      if punctuation.include?(word[-1])
        sentences += 1
      end

    end 
    sentences
  end
  
end