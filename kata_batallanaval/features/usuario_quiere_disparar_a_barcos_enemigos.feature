Feature: como usuario quiero disparar a los barcos enemigos

  Scenario: Disparo y toco agua
    Given un juego comenzado, con player 1 y player 2 terminado de colocar sus barcos
    When es turno del player 1
    Then dispara a la coordenada 5,5 golpea el agua

  @wip
  Scenario: Disparo a un enemigo, acierto pero no lo hundo
    Given un juego comenzado, con player 1 y player 2 terminado de colocar sus barcos
    When player 1 ataca la coordenada 5,5
    Then player 1 goplea un barco pero no lo hunde

  @wip
  Scenario: Disparo a un enemigo, acierto y lo hundo
    Given un juego comenzado, con player 1 y player 2 terminado de colocar sus barcos
    When player 1 ataca la coordenada 6,6
    Then player 1 golpea un barco y lo hunde