# This migration comes from goldencobra (originally 20120312111338)
class CreateGoldencobraWidgets < ActiveRecord::Migration
  def change
    create_table :goldencobra_widgets do |t|
      t.string :title
      t.text :content
      t.string :css_name
      t.boolean :active

      t.timestamps
    end
  end
end
