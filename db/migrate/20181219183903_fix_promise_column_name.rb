class FixPromiseColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :promises, :type, :body
  end
end
