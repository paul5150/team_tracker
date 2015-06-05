require('rspec')
require('team')
# require('member')

describe(Team) do

  describe("#group") do
    it("returns the name of the team") do
      test_team = Team.new("Patriots")
      expect(test_team.group()).to(eq("Patriots"))
    end
  end

end
