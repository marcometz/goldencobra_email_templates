GoldencobraEmailTemplates::Engine.routes.draw do


  match "email_templates/archiv" => 'email_templates#archiv'
  match "email_templates/show/:id" => "email_templates#show", as: "show_email_template"

end
