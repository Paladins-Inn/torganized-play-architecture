Feature: User Registration

  Scenario: Register a new user
    Given: A user with namespace 'NAMESPACE' and name 'NAME' does not exists
    And: The success counter is 0.
    And: The error counter is 0.
    When: A user with namespace 'NAMESPACE' and name 'NAME' is registered
    Then: A user with namespace 'NAMESPACE' and name 'NAME' exists
    And: The success counter is 1.
    And: The error counter is 0.

  Scenario: Trying to register a banned user
    Given: A user with namespace 'NAMESPACE' and name 'NAME' does exists
    And: The user with namespace 'NAMESPACE' and name 'NAME' is banned
    And: The success counter is 0.
    And: The error counter is 0.
    When: A user with namespace 'NAMESPACE' and name 'NAME' is registered
    Then: A user with namespace 'NAMESPACE' and name 'NAME' is banned
    And: The success counter is 0.
    And: The error counter is 1.

  Scenario: Trying to register a blocked user
    Given: A user with namespace 'NAMESPACE' and name 'NAME' does exists
    And: The user with namespace 'NAMESPACE' and name 'NAME' is blocked
    And: The success counter is 0.
    And: The error counter is 0.
    When: A user with namespace 'NAMESPACE' and name 'NAME' is registered
    Then: A user with namespace 'NAMESPACE' and name 'NAME' is blocked
    And: The success counter is 0.
    And: The error counter is 1.

  Scenario: Re-register a deleted user
    Given: A user with namespace 'NAMESPACE' and name 'NAME' does exists
    And: The user with namespace 'NAMESPACE' and name 'NAME' is deleted
    And: The success counter is 0.
    And: The error counter is 0.
    When: A user with namespace 'NAMESPACE' and name 'NAME' is registered
    Then: A user with namespace 'NAMESPACE' and name 'NAME' exists
    And: The success counter is 1.
    And: The error counter is 0.
