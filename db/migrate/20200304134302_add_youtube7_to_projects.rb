class AddYoutube7ToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :youtube7, :string
  end
end
