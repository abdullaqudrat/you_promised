class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.string :type
      t.string :status, default: 'In Progress'

      t.timestamps
    end
  end
end
