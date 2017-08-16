class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    #add new column to table
    # table name, column name , data type, defaults if any
    add_column :users, :role, :string, default: 'user'
  end
end
