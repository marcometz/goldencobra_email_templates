# This migration comes from goldencobra (originally 20120321120727)
class AddSocialSharingToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :enable_social_sharing, :boolean

  end
end
