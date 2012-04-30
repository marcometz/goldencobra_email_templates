class AddHeaderToGoldencobraEmailTemplatesEmailTemplates < ActiveRecord::Migration
  def change
    add_column :goldencobra_email_templates_email_templates, :header_html, :text
    add_column :goldencobra_email_templates_email_templates, :footer_html, :text
  end
end
