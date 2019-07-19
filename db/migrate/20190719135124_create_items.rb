class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.timestamps
      t.integer :user_id
      t.integer :category_id
      t.text :item_image_id
      t.string :item_name
      t.string :brand
    end
  end
end
