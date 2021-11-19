// Module for the 2 x 2 pixel array using pixelSensor

// Include the pixel sensor files
`include "pixelSensor.fl";

// Use the pixel sensor in the pixel array
//
// Signals that need to be in a bus:
// - DATA
//
// Signals that are common for the pixels
// - VBN1
// - RAMP
// - RESET
// - ERASE
// - EXPOSE

module pixel_Array(
    input logic      VBN1,
    input logic      RAMP,
    input logic      RESET,
    input logic      ERASE,
    input logic      EXPOSE,
    input logic      READ1,
    input logic      READ2,
    input logic      READ3,
    input logic      READ4,
    inout [7:0]      DATA,
    );
    
    // Instanciate the 4 pixels
    PIXEL_SENSOR # () inst1(
        .VBN1 (VBN1),
        .RAMP (RAMP),
        .RESET (RESET),
        .ERASE (ERASE),
        .EXPOSE (EXPOSE),
        .READ (READ1)
        .DATA (DATA)
        );

    PIXEL_SENSOR # () inst2(
        .VBN1 (VBN1),
        .RAMP (RAMP),
        .RESET (RESET),
        .ERASE (ERASE),
        .EXPOSE (EXPOSE),
        .READ (READ2)
        .DATA (DATA)
        );

    PIXEL_SENSOR # () inst3(
        .VBN1 (VBN1),
        .RAMP (RAMP),
        .RESET (RESET),
        .ERASE (ERASE),
        .EXPOSE (EXPOSE),
        .READ (READ3)
        .DATA (DATA)
        );

    PIXEL_SENSOR # () inst4(
        .VBN1 (VBN1),
        .RAMP (RAMP),
        .RESET (RESET),
        .ERASE (ERASE),
        .EXPOSE (EXPOSE),
        .READ (READ4)
        .DATA (DATA)
        );

endmodule