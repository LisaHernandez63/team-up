class AddProfilePhotoToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :profile_photo, :string
    remove_column :teams, :img, :string
  end
end
