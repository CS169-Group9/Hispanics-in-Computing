Feature: Only when a user has never logged in before should their attributes be updated
 
  As a member in Hispanics in Engineering
  So that the data that I entered will not be overwritten
  When I log in, my data will not be overwritten by the data that appears in my google profile

Scenario: I have never logged in before so my data is populated with the data in my google profile
  Given I am a member of the slack group
  And I have never logged in before
  And I login
  Then my information is determined through my google profile

Scenario: I have logged in before so my data is not overwritten
  Given I am a member of the slack group
  And I have logged in before
  And I login
  Then my information should not change