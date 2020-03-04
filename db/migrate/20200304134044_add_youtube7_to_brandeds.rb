class AddYoutube7ToBrandeds < ActiveRecord::Migration[5.2]
  def change
    add_column :brandeds, :youtube7, :string
  end
end
