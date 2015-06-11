#ifndef CO2_D1_H
#define	CO2_D1_H

#include "../../bsp.h"

#define CO2D1_OUT_AN_CH     10

void Co2D1Init(void);

void Co2D1Measure(uint16_t* data);

#endif	/* CO2_D1_H */

