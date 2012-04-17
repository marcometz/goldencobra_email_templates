module GoldencobraEmailTemplates
  class EmailTemplate < ActiveRecord::Base
    attr_accessible :bcc, :content_html, :content_txt, :custom_css, :layout_file, :title
    
    #def self.templates_for_select
    #  Dir.glob(File.join(::Rails.root, "app", "views", "layouts", "*.html.erb")).map{|a| File.basename(a, ".html.erb")}.delete_if{|a| a =~ /^_/ }
    #end
    
    
  end
end
