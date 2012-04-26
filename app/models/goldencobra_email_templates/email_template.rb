module GoldencobraEmailTemplates
  class EmailTemplate < ActiveRecord::Base
    attr_accessible :bcc, :content_html, :content_txt, :custom_css, :layout_file, :title
    
    #def self.templates_for_select
    #  Dir.glob(File.join(::Rails.root, "app", "views", "layouts", "*.html.erb")).map{|a| File.basename(a, ".html.erb")}.delete_if{|a| a =~ /^_/ }
    #end
    
    after_save :reload_active_admin
    
    def reload_active_admin
      if defined?(ActiveAdmin) and ActiveAdmin.application
        ActiveAdmin.application.unload!
        ActiveAdmin.application.load!
      end
    end
    
  end
end
