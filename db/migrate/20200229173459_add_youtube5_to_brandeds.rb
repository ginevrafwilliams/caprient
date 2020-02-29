class AddYoutube5ToBrandeds < ActiveRecord::Migration[5.2]
  def change
    add_column :brandeds, :youtube5, :string
  end
end
