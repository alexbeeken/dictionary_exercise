require('sinatra')
require('sinatra/reloader')
#also_require('.lib/**/*.rb')
require('./lib/definition')
require('./lib/term')
require('./lib/word')

get('/') do
  @terms = Term.list()
  erb(:index)
end


post('/add_a_word') do
  @word_input = Word.new(params.fetch("word"), params.fetch("language"))
  @definition_input = Definition.new(params.fetch("definition"), params.fetch("language"))
  @temp = Term.new(@word_input , @definition_input)
  @temp.save()
  redirect('/')
end

get('/words/:id') do
  @id = params.fetch('id')
  @page_term = Term.find(@id)
  erb(:words)
end
