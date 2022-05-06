class ChangeColumnDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :role, 'User'
  end
end
