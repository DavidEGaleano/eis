
Feature: Operaciones basicas

  
  Scenario: suma
    Given un operando es 1
    And otro operando es 2
    When los sumo
    Then el resultado es 3
  
  Scenario: resta
    Given un operando es 2
    And otro operando es 2
    When los resto
    Then el resultado es 0

  @wip
  Scenario: promedio
    Given un operando es 10
    And otro operando es 2
    When los promedio
    Then el resultado es 6

