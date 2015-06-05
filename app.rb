require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/member')
require('./lib/team')

get('/') do
  erb(:index)
end

get('/teams') do
  @teams = Team.all()
  erb(:teams)
end

get('/teams/new') do
  erb(:teams_form)
end



post('/teams') do
  team = params.fetch('team')
  Team.new(team).save()
  @teams = Team.all()
  erb(:success)
end

get('/members/new') do
  erb(:team_members_form)
end

get('/members/') do
  @member = Member.all
  erb(:vehicles)
end

post('/members') do
  name = params.fetch("name")
  @members = Member.all
  @member = Member.new(name)
  @member.save()
  @team = Team.find(params.fetch('team_id').to_i())
  @team.add_member(@member)
  erb(:vehicles)
end
