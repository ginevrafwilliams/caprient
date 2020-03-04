class AddYoutube4ToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :youtube4, :string
  end
end
