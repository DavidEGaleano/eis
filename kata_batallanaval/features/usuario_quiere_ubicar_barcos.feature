Feature: como usuario quiero ubicar mis barcos

  Scenario: Ubico mi barco exitosamente
    Given un tablero vacio
    When selecciono un barco
    Then coloco un barco en la posicion 1,1

  Scenario: No puedo ubicar un barco en una posicion ya ocupada
    Given un tablero con barcos
    When selecciono un barco
    Then no puedo colocar un barco en la posicion 1,1

  @wip
  Scenario: No puedo ubicar un barco en una posicion fuera del tablerdo
    Given un tablero
    When selecciono un barco
    Then no puedo colocar un barco en una coordenada fuera del tablero