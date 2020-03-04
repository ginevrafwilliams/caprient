class AddYoutube5ToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :youtube5, :string
  end
end
