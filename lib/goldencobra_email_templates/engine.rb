
module GoldencobraEmailTemplates
  class Engine < ::Rails::Engine
    isolate_namespace GoldencobraEmailTemplates

    config.to_prepare do
      ApplicationController.helper(GoldencobraEmailTemplates::ApplicationHelper)
      ActionController::Base.helper(GoldencobraEmailTemplates::ApplicationHelper)
    end

  end
end
