ActiveAdmin.register GoldencobraEmailTemplates::EmailTemplate, :as => "Email Template" do

  menu :parent => "Content-Management", :label => "Email Vorlagen", :if => proc{can?(:read, Goldencobra::Article)}
  
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
  
  sidebar "Hilfe", :only => [:edit] do
    h3 raw("Folgende Felder sind derzeit verf&uuml;gbar")
    ul do
      li "{{ user.anrede }}"
      li "{{ user.firstname }}"
      li "{{ user.lastname }}"
      li "{{ user.gender }}"
      li "{{ user.title }}"
      li "{{ user.function }}"
    end
  end


end
