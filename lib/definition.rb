class Definition
  define_method(:initialize) do |definition, language|
    @definition = definition
    @language = language
  end

  define_method(:get_definition) do
    @definition
  end

  define_method(:get_language) do
    @language
  end
end
