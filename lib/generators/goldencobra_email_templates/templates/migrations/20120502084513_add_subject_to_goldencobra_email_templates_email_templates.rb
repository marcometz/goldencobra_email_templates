class AddSubjectToGoldencobraEmailTemplatesEmailTemplates < ActiveRecord::Migration
  def change
    add_column :goldencobra_email_templates_email_templates, :subject, :string
  end
end
