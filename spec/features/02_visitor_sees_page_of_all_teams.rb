require "rails_helper"

feature "visitor sees details for a particular team" do
  scenario "clicks link from index and sees info for that team" do

  team1 = Team.create(
    teamname: 'Lexington High Junior Varsity Boys Hockey',
    coach: 'Matt Piccarillo',
    schoolname: 'Lexington High School',
    streetaddress: '251 Waltham Street',
    town: 'Lexington',
    state: 'MA',
    zip: '02420',
    img: 'IMG_2871.jpg',
    description: 'A young hockey team with a lot of heart'
  )


    visit team_path
    expect(page).to have_content team1.name
    click_link team1.name

    expect(page).to have_content team1.name
    expect(page).to have_content team1.description
    expect(page).to have_link(nil, href: ('mailto:' + monster2.email))
    expect(page).to have_link(nil, href: monster2.source)
  end
end
