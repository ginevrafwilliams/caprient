class AddYoutube6ToBrandeds < ActiveRecord::Migration[5.2]
  def change
    add_column :brandeds, :youtube6, :string
  end
end
