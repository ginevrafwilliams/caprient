class AddYoutube6ToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :youtube6, :string
  end
end
