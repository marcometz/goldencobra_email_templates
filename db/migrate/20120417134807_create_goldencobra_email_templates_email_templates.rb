class CreateGoldencobraEmailTemplatesEmailTemplates < ActiveRecord::Migration
  def change
    create_table :goldencobra_email_templates_email_templates do |t|
      t.string :title
      t.text :content_txt
      t.text :content_html
      t.string :bcc
      t.text :custom_css
      t.string :layout_file

      t.timestamps
    end
  end
end
