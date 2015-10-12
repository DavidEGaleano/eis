Feature: como usuario quiero ubicar mis barcos

  Scenario: Ubico mi barco exitosamente
    Given un tablero vacio
    When selecciono un barco destructor
    Then coloco un barco en la posicion 1,1

  Scenario: No puedo ubicar un barco en una posicion ya ocupada
    Given un tablero con un barco destructor en la posicion 1,1
    When selecciono un barco destructor
    Then no puedo colocar un barco en la posicion 1,1

  Scenario: No puedo ubicar un barco en una posicion fuera del tablerdo
    Given un tablero vacio
    When selecciono un barco destructor
    Then no puedo colocar un barco en la coordenada 10,10 que esta fuera del tablero