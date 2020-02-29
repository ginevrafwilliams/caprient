class AddYoutube2ToBrandeds < ActiveRecord::Migration[5.2]
  def change
    add_column :brandeds, :youtube2, :string
  end
end
