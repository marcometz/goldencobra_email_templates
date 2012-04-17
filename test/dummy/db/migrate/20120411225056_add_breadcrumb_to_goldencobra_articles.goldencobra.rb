# This migration comes from goldencobra (originally 20120307151355)
class AddBreadcrumbToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :breadcrumb, :string

  end
end
