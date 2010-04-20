Feature: Morse code
  In order to successfully transmit messages
  A telegraph operator
  Must be able to understand Morse code

  Scenario Outline: translating english -> morse
    Given the english <english>
    When I translate it into Morse code
    Then I should get the result <morse>

    Examples:
      | english | morse |
      | paris   | .--. .- .-. .. ... |
      | michael berkowitz | -- .. -.-. .... .- . .-.. / -... . .-. -.- --- .-- .. - --.. |

  Scenario Outline: translating morse -> english
    Given the morse <morse>
    When I translate it into english
    Then I should get the english result <english>

    Examples:
      | morse | english |
      | .--. .- .-. .. ...| paris |
      | ... .- ...- . / --- ..- .-. / ... .... .. .--. | save our ship |
