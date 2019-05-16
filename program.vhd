library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.PIPECPU_STD.ALL;

package program_file is
  
  constant program : program_memory_array := (
--$PROGRAM
X"8b110001", -- addi r1 r1 1
X"03000000", -- nop
X"03000000", -- nop
X"03000000", -- nop
X"03000000", -- nop
X"e7010000", -- out 0 r1
X"8b22000a", -- addi r2 r2 10
X"e7020000", -- out 0 r2
X"03000000", -- nop
X"3300ffff", -- rjmp -1
--$PROGRAM_END
others => X"00000000"
);

end program_file;
