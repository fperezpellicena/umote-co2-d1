#ifndef CO2_D1_H
#define	CO2_D1_H

#include "../../bsp.h"

#define CO2D1_OUT_AN_CH     10
#define CO2D1_OUT_CNF       ANCON1bits.PCFG10
#define CO2D1_OUT_DDR       TRISBbits.TRISB1

void Co2D1Init(void);

void Co2D1Measure(uint16_t* data);

#endif	/* CO2_D1_H */

