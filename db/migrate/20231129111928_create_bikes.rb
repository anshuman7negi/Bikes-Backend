class CreateBikes < ActiveRecord::Migration[7.1]
  def change
    create_table :bikes do |t|

      t.string :image
      t.string :name
      t.string :detail
      t.float :price
      t.float :finance_fee
      t.float :option_to_purchase_fee 
      t.integer :duration

      t.timestamps
    end
  end
end
