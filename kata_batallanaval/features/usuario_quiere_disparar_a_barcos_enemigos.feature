Feature: como usuario quiero disparar a los barcos enemigos

  Scenario: Disparo y toco agua
    Given un juego comenzado, con player 1 y player 2 terminado de colocar sus barcos
    When es turno del player 1
    Then dispara a la coordenada 1,5 golpea el agua

  Scenario: Disparo a un enemigo, acierto pero no lo hundo
    Given un juego comenzado, con player 1 y player 2 terminado de colocar sus barcos
    When es turno del player 1
    Then dispara a la coordenada 5,1 golpea un barco enemigo pero no lo hunde

  Scenario: Disparo a un enemigo, acierto y lo hundo
    Given un juego comenzado, con player 1 y player 2 terminado de colocar sus barcos
    When es turno del player 1
    Then ataca la coordenada 5,5 golpea un barco y lo hunde