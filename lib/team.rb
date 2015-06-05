class Team

  @@teams = []

  define_method(:initialize) do |team_name|
    @team_name = team_name
    @id = @@teams.length().+(1)
    @capitalists = []
  end

  define_method(:team_name) do
    @team_name
  end

  define_method(:id) do
    @id
  end

  define_method(:capitalists) do
    @capitalists
  end

  define_singleton_method(:all) do
    @@teams
  end

  define_method(:save) do
    @@teams.push(self)
  end

  define_singleton_method(:clear) do
    @@teams = []
  end

  define_singleton_method(:find) do |id|
    found_team = nil
    @@teams.each() do |team|
      if team.id().eql?(id)
        found_team = team
      end
    end
    found_team
  end

end
