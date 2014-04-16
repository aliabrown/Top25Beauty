class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :product_name
      t.string :product_pic

      t.timestamps
    end
  end
end
