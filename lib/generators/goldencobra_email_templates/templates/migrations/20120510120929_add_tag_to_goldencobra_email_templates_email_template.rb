class AddTagToGoldencobraEmailTemplatesEmailTemplate < ActiveRecord::Migration
  def change
    add_column :goldencobra_email_templates_email_templates, :template_tag, :string
  end
end
