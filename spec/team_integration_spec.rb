require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application

describe("the team path", {:type => :feature}) do
  it("visits the the front page") do
    visit("/")
    expect(page).to have_content("Start Up Weekend")
  end

  it("adds a team") do
    visit('/teams/new')
    fill_in('team', :with => "Patriots")
    click_button('Add Team')
    visit('/teams')
    expect(page).to have_content("Patriots")
  end

  it("adds a person to a team") do
    visit('/teams/new')
    fill_in('team', :with => "Patriots")
    click_button('Add Team')
    visit('/teams/1/members/new')
    fill_in('name', :with => "Bill Gates")
    click_button('Add Person')
    visit('/members/')
    expect(page).to have_content("Success")
  end

end
