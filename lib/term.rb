class Term
  @@dictionary = []

  define_method(:initialize) do |word, definition|
    @word = word
    @definition = definition
    @id = @@dictionary.length().+(1)
  end

  define_method(:look_up_word) do
    @word
  end

  define_method(:look_up_definition) do
    @definition
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@dictionary.push(self)
  end

  define_method(:edit_word) do |new_word|
    @word = new_word
  end

  define_method(:edit_definition) do |new_definition|
    @definition = new_definition
  end

  define_singleton_method(:delete) do |term_delete|
    @@dictionary.delete(term_delete)
  end

  define_singleton_method(:search_word) do |word_look|
    @@dictionary.each() do |term_look|
      if term_look.look_up_word() == word_look
        return term_look
      end
    end
  end

  define_singleton_method(:list) do
    @@dictionary
  end

  define_singleton_method(:clear) do
    @@dictionary = []
  end

  define_singleton_method(:find) do |id|
    @@dictionary.each() do |dictionaries|
      if dictionaries.id() == id
        return dictionaries
      end
    end
  end
end

# output = ("#{@word}: #{@definition}")
