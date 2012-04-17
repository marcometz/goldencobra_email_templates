# This migration comes from goldencobra (originally 20120327102754)
class AddDefault404Article < ActiveRecord::Migration
  def up
    Goldencobra::Article.create(:title => "404", :content => "Diese Seite existiert leider nicht.", :url_name => "404", :breadcrumb => "Seite nicht gefunden")
  end

  def down
    Goldencobra::Article.find_by_title("404").destroy
  end
end
