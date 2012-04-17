# This migration comes from goldencobra (originally 20120321130204)
class AddArticleindeximagesToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :article_for_index_images, :boolean, :default => false

  end
end
