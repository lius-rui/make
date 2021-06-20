#include <stdio.h>
#include "../can/can.h"
#include "../net/net.h"
#include "../uart/uart.h"

int main()
{
	printf("hello  makefile\n");
	can_init();
	net_init();
	uart_init();
	return 0;
}
