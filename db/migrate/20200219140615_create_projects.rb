class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :photo
      t.string :year
      t.string :direction
      t.string :coproduction
      t.string :distribution
      t.text :story

      t.timestamps
    end
  end
end
