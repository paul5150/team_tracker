require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application

describe("the team path", {:type => :feature}) do
  it("visits the the front page") do
    visit("/")
    expect(page).to have_content("Start Up Weekend")
  end
end
