// asmproc.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "crc16.h"


int _tmain(int argc, _TCHAR* argv[])
{
	char	bData[6] = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06};

	unsigned short r = crc16(bData, 6);

	return 0;
}

