require "rails_helper"
require "pry"
feature "visitor sees details for a particular player" do
  scenario "clicks link from index and sees info for that player" do
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

  player1 = Player.create(
    first_name: 'Brandon',
    last_name: 'Hernandez',
    position: 'Defensemen',
    photo: 'IMG_2715.jpg',
    fav_pregame_meal: 'Turkey Terrific',
    fav_pregame_drink: 'Gatorade',
    team_id: team1.id,
    user_id: user1.id
  )

    visit team_path(team1.id)
    expect(page).to have_content player1.first_name
    expect(page).to have_content player1.last_name
    click_link player1.first_name, player1.last_name


    expect(page).to have_content player1.photo
    expect(page).to have_content player1.fav_pregame_meal
    expect(page).to have_content player1.fav_pregame_drink
  end
end
