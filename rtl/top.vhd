library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity top is
    port (        
      SYSCLK         : in  std_ulogic;
      -- USER LEDS
      LED1           : out std_ulogic;
      LED2           : out std_ulogic;
      LED3           : out std_ulogic;
      LED4           : out std_ulogic;
      -- USER SWITCHES
      SW1            : in std_ulogic;
      SW2            : in std_ulogic;
      SW3            : in std_ulogic;
      SW4            : in std_ulogic
    );
end entity top;

architecture rtl of top is
   signal clk        : std_ulogic;

   signal led1_q     : std_ulogic := '1';
   signal led2_q     : std_ulogic := '1';
   signal led3_q     : std_ulogic := '1';
   signal led4_q     : std_ulogic := '1';

   signal heartbeat  : unsigned(31 downto 0) := to_unsigned(0,32); 

begin
   
   LED1  <= led1_q AND NOT SW1;
   LED2  <= led2_q AND NOT SW2;
   LED3  <= led3_q AND NOT SW3;
   LED4  <= led4_q AND NOT SW4;

   -- 100 MHz CLOCK BUFFER
   clk_usr_buf : IBUFG
   port map (
       O   => clk,
       I   => SYSCLK
   );

   heartbeat_blink : process(clk)   
   begin
      if(clk'event and clk='1') then
         led1_q    <= heartbeat(26);
         led2_q    <= heartbeat(25);
         led3_q    <= heartbeat(24);
         led4_q    <= heartbeat(23);
         heartbeat <= heartbeat + 1;
      end if;
   end process;

end architecture rtl;
