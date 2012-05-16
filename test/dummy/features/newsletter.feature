Feature: Create & manage email templates

  Background:
    Given that a confirmed admin exists
    And I am logged in as "admin@test.de" with password "secure12"
    And the following "email_templates" exist:
      | title                 | template_tag       | content_html                                                             |
      | Newsletter Monthly #1 | newsletter_monthly | <div><p>{{ user.firstname }} {{user.lastname}} My content body</p></div> |
      | Newsletter Monthly #2 | newsletter_monthly |                                                                          |

  Scenario: Gehe zum Newsletter Archiv fuer ein bestimmten Email Template Tag
    When I go to the article page "goldencobra_email_templates/email_templates/archiv?tag=newsletter_monthly"
    Then I should see "Newsletter Monthly #1"
    And I should see "Newsletter Monthly #2"

  Scenario: Open an archived newsletter
    When I go to the article page "goldencobra_email_templates/email_templates/archiv?tag=newsletter_monthly"
    And I click on "Newsletter Monthly #1"
    And I should see "My content body"
