module Morse
  ENGLISH = Array('a'..'z') << " "
  MORSE = %w{.- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --.. /}

  def self.translate(string)
    @string = string.downcase.strip.gsub(/\s{2,}/, " ")
    if @string.is_morse?
      @split, @join = " ", ""
      self.translate_from_to(MORSE, ENGLISH)
    else
      @split, @join = "", " "
      self.translate_from_to(ENGLISH, MORSE)
    end
  end

  # @private
  def self.translate_from_to(source, target)
    @string.split(@split).map{|char| target[source.index(char)] }.join(@join)
  end
end

# @private
class String
  # @private
  def is_morse?
    self.gsub(/\.|-|\//, "").strip == ""
  end
end
