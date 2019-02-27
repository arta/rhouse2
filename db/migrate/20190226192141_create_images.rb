class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :portfolio, foreign_key: true
      t.integer :show_order
      t.string :caption_heading
      t.text :caption_text
      t.text :comment

      t.timestamps
    end
  end
end
