require "rails_helper"

feature "users can add teams" do
  scenario "user adds new team successfully" do
    user1 = User.create(
      email: 'lhdiff@yahoo.com',
      password: 'password',
      username: 'Diff'
      )
    visit new_team_path
    click_link 'Login'
    fill_in 'Email', with: 'lhdiff@yahoo.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'

    visit new_team_path
    expect(page).to have_content "Add a Team"

    fill_in 'Teamname', with: "Diamond Diva's"
    fill_in 'Coach', with: "Lisa Hernandez"
    fill_in 'Schoolname', with: "Fiske"
    fill_in 'Streetaddress', with: "123 Colony Road"
    fill_in 'Town', with: "Lexington"
    fill_in 'State', with: "MA"
    fill_in 'Zip', with: "02420"
    fill_in 'Description', with: "Cool women"

    click_button "Save"

    expect(page).to have_content "Team added successfully"
  end

  scenario "user does not provide proper information for a team" do

    user1 = User.create(
      email: 'lhdiff@yahoo.com',
      password: 'password',
      username: 'Diff'
      )
    visit new_team_path
    click_link 'Login'
    fill_in 'Email', with: 'lhdiff@yahoo.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'

    visit new_team_path
    expect(page).to have_content "Add a Team"

    click_button "Save"
    expect(page).to have_content "Teamname can't be blank"
    expect(page).to have_content "Coach can't be blank"
    expect(page).to have_content "Schoolname can't be blank"
    expect(page).to have_content "Streetaddress can't be blank"
    expect(page).to have_content "Town can't be blank"
    expect(page).to have_content "State can't be blank"
    expect(page).to have_content "Zip can't be blank"
  end
end
