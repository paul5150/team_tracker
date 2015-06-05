require('rspec')
require('member')

describe(Member) do
  before() do
    Member.clear()
  end

  describe('#name') do
    it("returns the name of the team member") do
      test_person = Member.new("John Smith")
      expect(test_person.name()).to(eq("John Smith"))
    end
  end

  describe('#save') do
    it("adds the name of a team member to an array of saved people") do
      test_person = Member.new("Mary Martha")
      test_person.save()
      expect(Member.all()).to(eq([test_person]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Member.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved people") do
      Member.new("Mary Martha").save()
      Member.clear()
      expect(Member.all()).to(eq([]))
    end
  end

end
