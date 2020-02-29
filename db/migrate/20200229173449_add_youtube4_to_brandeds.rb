class AddYoutube4ToBrandeds < ActiveRecord::Migration[5.2]
  def change
    add_column :brandeds, :youtube4, :string
  end
end
