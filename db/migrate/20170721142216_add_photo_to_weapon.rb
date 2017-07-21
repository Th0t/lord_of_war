class AddPhotoToWeapon < ActiveRecord::Migration[5.0]
  def change
    add_column :weapons, :photo, :string
  end
end
