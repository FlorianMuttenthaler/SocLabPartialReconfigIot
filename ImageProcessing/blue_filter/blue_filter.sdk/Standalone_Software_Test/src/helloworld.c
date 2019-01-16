    #include "platform.h"
    #include "xbasic_types.h"
    #include "xparameters.h"

    Xuint32 *baseaddr_p = (Xuint32 *)XPAR_BLUE_FILTER_IP_0_S00_AXI_BASEADDR;

    int main()
    {
    init_platform();

    xil_printf("Multiplier Test\n\r");

    // Write multiplier inputs to register 0
    *(baseaddr_p+3) = 0xFFFFFFFF;
    xil_printf("Wrote: 0x%08x \n\r", *(baseaddr_p+3));

    // Read multiplier output from register 1
    xil_printf("Read : 0x%08x \n\r", *(baseaddr_p+3));

    xil_printf("End of test\n\n\r");

    return 0;
    }
