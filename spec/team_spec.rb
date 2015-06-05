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

   describe("#capitalists") do
     it("initially returns an empty array of partners for a team") do
       test_team = Team.new("Patriots")
       expect(test_team.capitalists()).to(eq([]))
     end
   end

   describe(".all") do
     it("is empty at first") do
       expect(Team.all()).to(eq([]))
     end
   end

   describe("#save") do
     it("adds a team to the array of saved teams") do
       test_team = Team.new("Red Sox")
       test_team.save()
       expect(Team.all()).to(eq([test_team]))
     end
   end
end
