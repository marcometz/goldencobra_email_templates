# This migration comes from goldencobra (originally 20120313142421)
class AddSorterToGoldencobraWidgets < ActiveRecord::Migration
  def change
    add_column :goldencobra_widgets, :sorter, :integer

  end
end
