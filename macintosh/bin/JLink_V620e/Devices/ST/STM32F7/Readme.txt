The flash algorithm assumes that the QSPI flash uses the pin layout below (same as on the ST STM32F746NG discovery board):
QSPI_CLK  PB2
QSPI_CS   PB6
QSPI_D0   PD11
QSPI_D1   PD12
QSPI_D2   PE2
QSPI_D3   PD13

If another pin layout is used for the QSPI interface, please refer to:
https://wiki.segger.com/STM32F746_Discovery