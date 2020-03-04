class AddCreativityToBrandeds < ActiveRecord::Migration[5.2]
  def change
    add_column :brandeds, :creativity, :string
  end
end
