# This migration comes from goldencobra (originally 20120321114923)
class AddArticleindexToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :article_for_index_id, :integer
    add_column :goldencobra_articles, :article_for_index_levels, :integer, :default => 0
    add_column :goldencobra_articles, :article_for_index_count, :integer, :default => 0
  end
end
