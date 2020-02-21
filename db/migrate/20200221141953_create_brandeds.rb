class CreateBrandeds < ActiveRecord::Migration[5.2]
  def change
    create_table :brandeds do |t|
      t.string :title
      t.string :year
      t.string :direction
      t.string :client

      t.timestamps
    end
  end
end
