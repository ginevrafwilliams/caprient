class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :title
      t.string :date
      t.string :newspaper
      t.string :link

      t.timestamps
    end
  end
end
