require "rails_helper"

feature "visitor sees page of all teams" do
  scenario "sees names for all teams in db" do
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
      description: 'A young hockey team with alot of heart'
    )


    visit teams_path

    expect(page).to have_content "Teams"
    expect(page).to have_content(team1.teamname)
  end
end
