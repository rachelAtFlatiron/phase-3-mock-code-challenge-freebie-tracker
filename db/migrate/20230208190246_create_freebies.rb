class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.integer :dev_id 
      t.integer :company_id 
      t.integer :value 
      t.string :item_name
    end
  end
end
