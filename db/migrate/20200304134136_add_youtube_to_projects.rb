class AddYoutubeToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :youtube, :string
  end
end
