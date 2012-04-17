ActiveAdmin.register GoldencobraEmailTemplates::EmailTemplate, :as => "Email Template" do
  # menu :parent => "Newsletter Registration"
  controller.authorize_resource :class => GoldencobraEmailTemplates::EmailTemplate
  filter :title
  
  index do
    column :title
    column :layout_file
    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs :class => "buttons inputs" do
      f.actions
    end
    f.inputs "Allgemein" do
      f.input :title
      f.input :bcc
    end
    f.inputs "Mail Body" do
      f.input :content_txt
      f.input :content_html
    end
    f.inputs "Styling" do
      f.input :layout_file#, :as => :select, :collection => GoldencobraEmailTemplates::EmailTemplate.templates_for_select, :include_blank => false    
      f.input :custom_css
    end
    
    f.inputs :class => "buttons inputs" do
      f.actions
    end
  end


end
