class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :portfolio, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
