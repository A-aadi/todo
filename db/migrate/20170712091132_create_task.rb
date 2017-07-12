class CreateTask < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :priority
      t.timestamps
    end
  end
end
