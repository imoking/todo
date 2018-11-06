class AddTitlesToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :titles, :string
  end
end
