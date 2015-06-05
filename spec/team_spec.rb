require('rspec')
require('team')
require('member')

describe(Team) do

  describe("#team_name") do
    it("returns the name of the team") do
      test_team = Team.new("Patriots")
      expect(test_team.team_name()).to(eq("Patriots"))
    end
  end

   describe("#id") do
     it("returns the id of the team") do
       test_team = Team.new("Patriots")
       expect(test_team.id()).to(eq(1))
     end
   end 
end
