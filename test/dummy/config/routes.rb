Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users, ActiveAdmin::Devise.config
  mount GoldencobraEvents::Engine => "/goldencobra_events"
  mount GoldencobraEmailTemplates::Engine => "/goldencobra_email_templates"
  mount Goldencobra::Engine => "/"
    
end
