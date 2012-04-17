# This migration comes from goldencobra (originally 20120313142221)
class AddNameToGoldencobraWidgets < ActiveRecord::Migration
  def change
    add_column :goldencobra_widgets, :id_name, :string

  end
end
