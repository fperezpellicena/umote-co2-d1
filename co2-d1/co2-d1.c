#include "averaged_adc.h"
#include "include/co2-d1.h"

static void Co2D1InitIO(void);

void Co2D1Init() {
    AdcInit();
    Co2D1InitIO();
}

void Co2D1Measure(uint16_t* data) {
    AdcConvert(CO2D1_OUT_AN_CH, data);
}

static void Co2D1InitIO(void) {
    CO2D1_OUT_CNF = 0;  // Analog function
    CO2D1_OUT_DDR = 1;  // Input pin
}