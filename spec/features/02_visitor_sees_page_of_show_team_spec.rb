require "rails_helper"

feature "visitor sees details for a particular team" do
  scenario "clicks link from index and sees info for that team" do
  user1 = User.create(
      email: 'lhdiff@yahoo.com',
      password: 'password',
      username: 'Diff'
    )

  team1 = Team.create(
    teamname: 'Lexington High Junior Varsity Boys Hockey',
    coach: 'Matt Piccarillo',
    schoolname: 'Lexington High School',
    streetaddress: '251 Waltham Street',
    town: 'Lexington',
    state: 'MA',
    zip: '02420',
    profile_photo: 'IMG_2871.jpg',
    user_id: user1.id,
    description: 'A young hockey team with a lot of heart'
  )


    visit teams_path
    expect(page).to have_content team1.teamname
    click_link team1.teamname

    expect(page).to have_content team1.teamname
    expect(page).to have_content team1.description
    expect(page).to have_content team1.coach
    expect(page).to have_content team1.schoolname
    expect(page).to have_content team1.streetaddress
    expect(page).to have_content team1.town
    expect(page).to have_content team1.state
    expect(page).to have_content team1.zip
    expect(page).to have_content team1.profile_photo

  end
end
