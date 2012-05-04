module GoldencobraEmailTemplates
  class EmailTemplate < ActiveRecord::Base
    attr_accessible :bcc, :content_html, :content_txt, :custom_css, :layout_file, :title, :subject
    
    after_save Goldencobra::Setting.new
    after_destroy Goldencobra::Setting.new
    
  end
end
