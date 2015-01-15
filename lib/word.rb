class Word
  define_method(:initialize) do |word, language|
    @word = word
    @language = language
  end

  define_method(:get_word) do
    @word
  end

  define_method(:get_language) do
    @language
  end
end
