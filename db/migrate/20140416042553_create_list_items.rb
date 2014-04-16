class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end
