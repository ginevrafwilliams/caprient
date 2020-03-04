class AddYoutube3ToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :youtube3, :string
  end
end
