class Team

  define_method(:initialize) do |team_name|
    @team_name = team_name
  end

  define_method(:team_name) do
    @team_name
  end
end
