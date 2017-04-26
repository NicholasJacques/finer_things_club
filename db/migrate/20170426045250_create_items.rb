class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.float :price

      t.timestamps null: false
    end
  end
end
