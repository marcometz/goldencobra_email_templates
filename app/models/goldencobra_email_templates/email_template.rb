module GoldencobraEmailTemplates
  class EmailTemplate < ActiveRecord::Base
    attr_accessible :bcc, :content_html, :content_txt, :custom_css, :layout_file, :title, :subject
    
    if ActiveRecord::Base.connection.table_exists?("goldencobra_settings")
      after_save Goldencobra::Setting.new
      after_destroy Goldencobra::Setting.new
    end
    
  end
end
