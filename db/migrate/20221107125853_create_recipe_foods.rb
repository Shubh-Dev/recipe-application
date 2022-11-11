class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.integer :quantity, null: false
      t.bigint :recipe_id
      t.bigint :food_id

      t.timestamps
    end
  end
end
