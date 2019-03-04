class CreatePuppies < ActiveRecord::Migration[5.2]
  def change
    create_table :puppies do |t|
      t.string :name
      t.integer :house_id
      t.integer :age
      t.string :image1
      t.string :image2

    end
  end
end
