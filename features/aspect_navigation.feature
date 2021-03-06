@javascript
Feature: Aspect navigation on the left menu
    In order to filter posts visibility and post targeting
    As a diaspora user
    I want to use the aspect navigation menu

    Background:
      Given a user with username "bob"
      And I sign in as "bob@bob.bob"

    Scenario: All aspects are selected by default
      When I go to the aspects page
      Then I should see "Besties" aspect selected
      Then I should see "Unicorns" aspect selected

    Scenario: Aspects selection is remembered through site navigation
      When I go to the aspects page
      And I select only "Besties" aspect
      And I go to the contacts page
      And I go to the aspects page
      Then I should see "Besties" aspect selected
      Then I should see "Unicorns" aspect unselected
