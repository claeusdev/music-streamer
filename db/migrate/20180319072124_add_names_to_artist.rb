class AddNamesToArtist < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :first_name, :string
    add_column :artists, :last_name, :string
    add_column :artists, :phone, :string
  end
end
