module GoldencobraEmailTemplates
  class EmailTemplatesController < ApplicationController
    def archiv
      if params[:tag]
        @old_newsletters = GoldencobraEmailTemplates::EmailTemplate.where('template_tag = ?', params[:tag])
        respond_to do |format|
          format.html
        end
      else
        render nothing: true
      end
    end

    def show
      @newsletter = GoldencobraEmailTemplates::EmailTemplate.find(params[:id])
      pass = Digest::MD5.new.hexdigest("pass-#{Time.now.to_f}")
      @user = User.find_by_email('no_reply@goldencobra.de')
      unless @user
        @user = User.create(firstname: "Max", lastname: "Mustermann", email:"no_reply@goldencobra.de", password: pass, password_confirmation: pass)
      end
      respond_to do |format|
        format.html
      end
    end
  end
end
