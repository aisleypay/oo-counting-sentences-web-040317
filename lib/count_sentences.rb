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
    punctuation = ["?", "!", "."]
    final_sentence = []
    answer = ""

    self.reverse.each_char { |chr|
      if punctuation.include?(chr) == true
        answer += chr
      else
        final_sentence << answer if answer != ""
        answer = ""
      end

      # if (punctuation.include?(chr)) && (punctuation.include?(chr[index + 1]) == false)
      #   counter += 1
      # end
    }

    final_sentence.length
  end
end
