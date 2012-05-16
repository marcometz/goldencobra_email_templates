# == Schema Information
#
# Table name: goldencobra_email_templates_email_templates
#
#  id           :integer(4)      not null, primary key
#  title        :string(255)
#  content_txt  :text
#  content_html :text
#  bcc          :string(255)
#  custom_css   :text
#  layout_file  :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#  subject      :string(255)
#  template_tag :string(255)
#

require 'test_helper'

module GoldencobraEmailTemplates
  class EmailTemplateTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
