----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2024 10:29:17 AM
-- Design Name: 
-- Module Name: BMP180_I2C_Com - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BMP180_I2C_Com is
    Port ( clk : in STD_LOGIC; --Orajel
           reset : in STD_LOGIC; --Reset jel 
           start : in STD_LOGIC; -- Start jel
           scl : out STD_LOGIC; --I2C orajel vonal
           sda : inout STD_LOGIC; --I2C adat vonal
           temp_out : out STD_LOGIC_VECTOR (15 downto 0); --Homerseklet adat
           press_out : out STD_LOGIC_VECTOR (15 downto 0)); --Legnyomas adat
end BMP180_I2C_Com;

architecture Behavioral of BMP180_I2C_Com is

type state_type is(IDLE, INIT, START_COND, SEND_ADDR, WRITE_REG, READ_DATA, STOP_COND, COMPUTE);
signal actual_state, next_state : state_type;

--I2C jelek
signal sda_internal : STD_LOGIC := '1'; -- SDA line control
signal sda_dir : STD_LOGIC := '0';  ---- vezerlesi irany: '1' kimenet, '0' bemenet
signal scl_internal : STD_LOGIC := '1'; -- SCL line control

--Adat es cim jelek
signal addr : STD_LOGIC_VECTOR(7 downto 0):= "11101110"; --BMP180 modul cime ami a 0xEE
signal reg_addr: STD_LOGIC_VECTOR(7 downto 0); --Regiszter Cim 
signal data_in: STD_LOGIC_VECTOR(15 downto 0); --BMP180 Adat
signal temp_raw : INTEGER;
signal press_raw: INTEGER;

--Kalibracios Koeficiensek
signal ac1, ac2, ac3 : INTEGER;
signal ac4, ac5, ac6 : INTEGER;
signal b1, b2, mb, mc, md: INTEGER;

-- Szamitasi jelek
signal x1, x2, b5 : INTEGER;
signal b6, x3, b3, b4, b7, p : INTEGER;
signal x1_press, x2_press : INTEGER;
signal oss : INTEGER := 3;
signal t : INTEGER;               -- homerseklet
signal p_pa : INTEGER;            -- legnyomas

    
begin
    
    -- SDA vonal tri-state meghajtása
    sda <= sda_internal when sda_dir = '1' else 'Z';
    --Kimenetek 
    scl <= scl_internal;
    
    process(clk, reset)
    begin
        if reset = '1' then
            actual_state <= IDLE;
            scl_internal <= '1';
            sda_internal <= '1';
        elsif clk' event and clk = '1' then
            actual_state <= next_state;
        end if;
    end process;
    
    KAL:process(actual_state,start)
    begin
        case actual_state is
            when IDLE => 
                if start = '1' then 
                    next_state <= INIT;
                else
                    next_state <= IDLE;
                end if;
             when INIT => 
                next_state <= START_COND;
              
             when START_COND => 
                next_state <= SEND_ADDR;
             
             when SEND_ADDR =>
                next_state <= WRITE_REG;
             
             when WRITE_REG => 
                next_state <= READ_DATA;
             
             when READ_DATA =>
                next_state <= STOP_COND;
              
             when STOP_COND =>
                next_state <= COMPUTE;
             
             when COMPUTE =>
                next_state <= IDLE;
             
             when others => 
                next_state <= IDLE;
        end case;
   end process;
   
   AL:process(clk)
   begin
        if clk' event and clk='1'then
            case actual_state is 
                when INIT => 
                    ac1 <= 408;
                    ac2 <= -72;
                    ac3 <= -14383;
                    ac4 <= 32741;
                    ac5 <= 32757;
                    ac6 <= 23153;
                    b1 <= 6190;
                    b2 <= 4;
                    mb <= -32767;
                    mc <= -8711;
                    md <= 2868;
                
                when START_COND =>
                    sda_internal <= '0';
                    sda_dir <= '1';
                 
                when SEND_ADDR =>
                    --Ezkoz cimenek kuldese
                    sda_internal <= addr(7);
                    scl_internal <= '0';
                    sda_dir <= '1';
                    
                when WRITE_REG =>
                    --Regiszter cim 
                    reg_addr <= "11110110";
                    
                when READ_DATA =>
                    --bemenetrol olvasunk
                    sda_dir <= '0';    
                
                when COMPUTE =>
                    b6 <= b5-4000;
                    x1 <= (b2*(b6*b6/2**12))/2**11;
                    x2 <= ac2 * b6/ 2**11;
                    
                    
                    
                when STOP_COND =>
                    sda_internal <= '1';
                    sda_dir <= '1';

                when others =>
                    --Alapertelmezett bealitas
                    sda_internal <= '1';
                    scl_internal <= '1';
             end case;
         end if;
    end process;
    
     -- Kimeneti adat
    temp_out <= STD_LOGIC_VECTOR(to_unsigned(temp_raw, 16));
    press_out <= STD_LOGIC_VECTOR(to_unsigned(press_raw, 16));
                                                  
    

end Behavioral;
