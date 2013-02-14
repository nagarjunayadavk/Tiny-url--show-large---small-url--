class CreateTines < ActiveRecord::Migration
  def change
    create_table :tines do |t|
      t.string :url
      t.string :tiny

      t.timestamps
    end
  end
end
