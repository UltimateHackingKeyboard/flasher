The flash algorithm assumes that the QSPI flash uses the pin layout below (same as on the ST STM32F469I discovery board):
QUADSPI_BK1_IO0   PF8
QUADSPI_BK1_IO1   PF9
QUADSPI_BK1_IO2   PF7
QUADSPI_BK1_IO3   PF6
QUADSPI_CLK       PF10
QUADSPI_BK1_NCS   PB6

If another pin layout is used for the QSPI interface, please refer to:
https://wiki.segger.com/STM32F4#STM32F469xx_.28Q.29SPI_support