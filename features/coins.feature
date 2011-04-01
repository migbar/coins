Feature: Guessing the hidden coins
  In order impress my friends 
  As a magician
  I want to guess the hidden coin  

  Scenario: 3 coins and 1 flips
    Given the following coins:
     | position |
     | head     |
     | tail     |
     | head     |
    When someone makes 1 flip
    And the visible coins are: 
     | position |
     | head     |
     | tail     |
   Then the hidden coin should be "tail"      
    
    
  Scenario: 3 coins and 6 flips
    Given the following coins:
     | position |
     | head     |
     | tail     |
     | head     |
    When someone makes 6 flips
    And the visible coins are: 
     | position |
     | head     |
     | tail     |   
    Then the hidden coin should be "head"


  Scenario: 9 coins and 8 flips
    Given the following coins:
     | position |
     | head     |
     | tail     |
     | head     |
     | tail     |
     | head     |
     | head     |
     | tail     |
     | head     |
     | head     |
    When someone makes 8 flips
    And the visible coins are: 
     | position |
     | tail     |
     | head     |
     | tail     |
     | head     |
     | tail     |
     | tail     |
     | head     |
     | tail     | 
    Then the hidden coin should be "head"
  