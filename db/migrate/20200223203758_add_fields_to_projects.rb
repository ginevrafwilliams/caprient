class AddFieldsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :coproduction2, :string
    add_column :projects, :coproduction3, :string
    add_column :projects, :coproduction4, :string
    add_column :projects, :coproduction5, :string
  end
end
