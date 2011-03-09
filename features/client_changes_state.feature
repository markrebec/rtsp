Feature: Client changes state
  As an RTSP client user
  I want to monitor the state of my client
  So that I can be sure of what my client is doing at any time

  Scenario Outline: State doesn't change after certain requests
    Given I haven't made any RTSP requests
    When I issue an "<request_type>" request with "<parameters>"
    Then the state stays the same
  Examples:
    | request_type | parameters |
    | options      |            |
    | describe     |            |

  Scenario Outline: State changes according to RFC
    Given I haven't made any RTSP requests
    When I issue an "<request_type>" request with "<parameters>"
    Then the state changes to "<state_result>"
  Examples:
    | request_type | parameters              | state_result |
    | setup        | url| Ready        |
