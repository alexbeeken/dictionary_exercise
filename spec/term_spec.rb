require('rspec')
require('term')
require('word')
require('definition')

describe(Term) do
  before() do
    Term.clear()
  end

  describe("#look_up_word") do
    it("will retrieve the word key in Term") do
      new_term = Term.new("carrot", "A delicious vegetable.")
      expect(new_term.look_up_word()).to(eq("carrot"))
    end
  end

  describe("#look_up_definition") do
    it("will retrieve the definition value in Term") do
      new_term = Term.new("carrot", "A delicious vegetable.")
      expect(new_term.look_up_definition()).to(eq("A delicious vegetable."))
    end
  end

  describe("#look_up_definition") do
    it("will retrieve the definition value in Term") do
      new_term = Term.new("carrot", ["A delicious vegetable.", "The first ingredient in my favorite cake."])
      expect(new_term.look_up_definition()).to(eq(["A delicious vegetable.", "The first ingredient in my favorite cake."]))
    end
  end

  describe("#look_up_definition") do
    it("will retrieve the definition value in Term") do
      new_term = Term.new(["carrot", "celery"], "vegetables")
      expect(new_term.look_up_definition()).to(eq("vegetables"))
    end
  end

  describe("#save") do
    it("will save the current term inside the dictionary") do
      new_term = Term.new("carrot", "A delicious vegetable.")
      new_term.save()
      expect(Term.list()).to(eq([new_term]))
    end
  end

  describe('.list') do
    it("returns the class variable, which will be empty") do
      expect(Term.list()).to(eq([]))
    end
  end

  describe('.clear') do
    it("clears out our dictionary of terms") do
      new_term = Term.new("carrot", "A delicious vegetable.")
      new_term.save()
      expect(Term.clear()).to(eq([]))
    end
  end

  describe('#edit_word') do
    it("changes the word in a term") do
      new_term = Term.new("carrot", "A delicious vegetable.")
      new_term.edit_word("celery")
      expect(new_term.look_up_word()).to(eq("celery"))
    end
  end

  describe('#edit_definition') do
    it("changes the definition in a term") do
      new_term = Term.new("carrot", "A delicious vegetable.")
      new_term.edit_definition("A gross vegetable.")
      expect(new_term.look_up_definition()).to(eq("A gross vegetable."))
    end
  end

  describe('.delete') do
    it("deletes the called upon element from the dictionary") do
      new_term1 = Term.new("carrot", "A delicious vegetable.")
      new_term1.save()
      new_term2 = Term.new("celery", "A gross vegetable.")
      new_term2.save()
      Term.delete(new_term2)
      expect(Term.list()).to(eq([new_term1]))
    end
  end

  describe('.delete') do
    it("deletes the called upon element from the dictionary") do
      new_term1 = Term.new("carrot", "A delicious vegetable.")
      new_term1.save()
      new_term2 = Term.new("celery", "A gross vegetable.")
      new_term2.save()
      Term.delete(new_term2)
      expect(Term.list()).to(eq([new_term1]))
    end
  end

  describe('.search_word') do
    it("searches class variable dictionary to find the word defined, then outputs the Term if found") do
      new_term1 = Term.new("carrot", "A delicious vegetable.")
      new_term1.save()
      new_term2 = Term.new("celery", "A gross vegetable.")
      new_term2.save()
      expect(Term.search_word("carrot")).to(eq(new_term1))
    end
  end
end

describe(Word) do
  describe('#get_word') do
    it('returns the word of a word') do
      test_word = Word.new('hat', 'english')
      expect(test_word.get_word()).to(eq('hat'))
    end
  end

  describe('#get_language') do
    it('returns the language of a word') do
      test_language = Word.new('hat', 'english')
      expect(test_language.get_language()).to(eq('english'))
    end
  end
end

describe(Definition) do
  describe('#get_definition') do
    it('returns the definition of a defintion') do
      test_definition = Definition.new('es uno numero', 'spanish')
      expect(test_definition.get_definition()).to(eq('es uno numero'))
    end
  end

  describe('#get_language') do
    it('returns the languae of a definition') do
      test_definition = Definition.new('es uno numero', 'spanish')
      expect(test_definition.get_language()).to(eq('spanish'))
    end
  end
end
