class AddMottoNameWorktitleLocationToUser < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :name, :string, {default: ""}
    add_column :users, :work_title, :string, {default: ""}
    add_column :users, :location, :string, {default: ""}
    add_column :users, :motto, :text, {default: ""}
  end

  def down
    remove_column :users, :name
    remove_column :users, :work_title
    remove_column :users, :location
    remove_column :users, :text
  end
end
