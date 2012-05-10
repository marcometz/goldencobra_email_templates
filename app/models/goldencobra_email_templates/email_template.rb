# == Schema Information
#
# Table name: goldencobra_email_templates_email_templates
#
#  id           :integer(4)      not null, primary key
#  title        :string(255)
#  content_txt  :text
#  content_html :text
#  bcc          :string(255)
#  custom_css   :text
#  layout_file  :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#  subject      :string(255)
#

module GoldencobraEmailTemplates
  class EmailTemplate < ActiveRecord::Base
    attr_accessible :bcc, :content_html, :content_txt, :custom_css, :layout_file, :title, :subject
    
    if ActiveRecord::Base.connection.table_exists?("goldencobra_settings")
      after_save Goldencobra::Setting.new
      after_destroy Goldencobra::Setting.new
    end
    
  end
end
