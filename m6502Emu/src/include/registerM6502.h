#pragma once

#include "typesM6502.h"

namespace M6502 {

	struct Bits;
	struct Register;

}

struct M6502::Bits
{
	Byte bit0 : 1;
	Byte bit1 : 1;
	Byte bit2 : 1;
	Byte bit3 : 1;
	Byte bit4 : 1;
	Byte bit5 : 1;
	Byte bit6 : 1;
	Byte bit7 : 1;
};

struct M6502::Register
{
	union
	{
		Byte byte;
		Bits bits;
	};
};
