class CreateProducts < ActiveRecord::Migration[6.0]ra
  def change
    create_table :products do |t|
      t.string :name
      t.string :url
      t.text :description

      t.timestamps null: false
    end
  end
end
