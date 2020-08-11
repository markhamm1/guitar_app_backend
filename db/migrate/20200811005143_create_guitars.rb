class CreateGuitars < ActiveRecord::Migration[6.0]
  def change
    create_table :guitars do |t|
      t.string :make
      t.string :model
      t.string :image_url

      t.timestamps
    end
  end
end
