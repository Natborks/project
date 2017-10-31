class AddProjectToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :project, :text
  end
end
