class CreateCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :coordinates do |t|

      t.timestamps
      t.integer :user_id
      t.text :coordinate_image_id
      t.text :body
    end
  end
end
