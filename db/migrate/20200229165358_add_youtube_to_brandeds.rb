class AddYoutubeToBrandeds < ActiveRecord::Migration[5.2]
  def change
    add_column :brandeds, :youtube, :string
  end
end
