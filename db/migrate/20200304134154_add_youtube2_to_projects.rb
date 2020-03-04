class AddYoutube2ToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :youtube2, :string
  end
end
