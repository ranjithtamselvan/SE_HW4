Feature: Test Category
  As a blog administrator
  I need categories for grouping my articles into different categories
  I need provision to view,add and update categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario:
    Given I am on the category page
    When I fill in "category_name" with "Randgroupname"
    And I fill in "category_keywords" with "RandKey"
    And I fill in "category_permalink" with "RandPerma"
    And I fill in "category_description" with "Randdesc"
    And I press "Save"
    Then I should see "Randgroupname"
    And I should be on the category page

  Scenario:
    Given A sample category is setup
    And I am on the category page
    When I follow "Edit"
    And I fill in "category_description" with "new cat description"
    And I press "Save"
    Then I should see "new cat description"
    And I should be on the category page

  Scenario:
    Given A sample category is setup
    And I am on the category edit page for "new categ"
    When I fill in "category_description" with "new cat description"
    And I press "Save"
    Then I should see "new cat description"
    And I should be on the category page
