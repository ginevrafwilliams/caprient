class AddYoutube3ToBrandeds < ActiveRecord::Migration[5.2]
  def change
    add_column :brandeds, :youtube3, :string
  end
end
