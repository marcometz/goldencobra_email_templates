# This migration comes from goldencobra (originally 20120314102039)
class AddTemplateToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :template_file, :string

  end
end
