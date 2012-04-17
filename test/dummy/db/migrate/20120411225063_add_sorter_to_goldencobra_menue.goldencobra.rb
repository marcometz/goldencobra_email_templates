# This migration comes from goldencobra (originally 20120315161536)
class AddSorterToGoldencobraMenue < ActiveRecord::Migration
  def change
    add_column :goldencobra_menues, :sorter, :integer, :default => 0

  end
end
