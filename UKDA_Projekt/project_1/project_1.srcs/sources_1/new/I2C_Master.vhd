----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/03/2024 11:08:49 AM
-- Design Name: 
-- Module Name: I2C_Master - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2C_Master is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           scl : out STD_LOGIC;
           sda : inout STD_LOGIC;
           addr : in STD_LOGIC_VECTOR (7 downto 0);
           reg_addr : in STD_LOGIC_VECTOR (7 downto 0);
           data_in : out STD_LOGIC_VECTOR (15 downto 0);
           rw : in STD_LOGIC);
end I2C_Master;

architecture Behavioral of I2C_Master is

--allapotok inicializalasa
type state_type is (IDLE, START_COND, SEND_ADDR, WRITE_REG, READ_DATA, STOP_COND);
signal actual_state, next_state : state_type;

--SDA tri-state
signal sda_internal : STD_LOGIC :='1';
signal sda_dir : STD_LOGIC :='0';

--idoziteshez
signal scl_internal : STD_LOGIC :='1';

--kommunikacios jelek
signal bit_index : INTEGER range 0 to 7 :=0;
signal temp_data : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');


begin

    --SDA tri-state meghajtasa
    sda <= sda_internal when sda_dir = '1' else 'Z';
    scl <= scl_internal;
    
    --Allapotgep mukodese
    process(clk,reset)
    begin
        if reset = '1' then
            actual_state <= IDLE;
            scl_internal <= '1';
            sda_internal <= '1';
         
        elsif rising_edge(clk) then
            actual_state <= next_state;
        end if;
    end process;
    
    --Allapotgep logikaja
    process(actual_state, start, rw, addr, reg_addr, bit_index)
    begin
        case actual_state is 
            when IDLE => 
                if start = '1' then 
                    next_state <= START_COND;
                else 
                    next_state <= IDLE;
                end if;
            when START_COND => 
                -- START feltétel (SDA HIGH -> LOW, SCL HIGH)
                sda_internal <= '0';
                sda_dir <= '1';
                scl_internal <= '1';
                next_state <= SEND_ADDR;
                
            when SEND_ADDR => 
                --Slave cim kuldese
                sda_internal <= addr(bit_index);
                scl_internal <='0'; -- orajel lefuto el
                if bit_index = 7 then
                    next_state <= WRITE_REG;
                else
                    bit_index <= bit_index + 1;
                end if;
                
            when WRITE_REG => 
                --Regiszter cim elkuldese
                sda_internal <= reg_addr(bit_index);
                scl_internal <= '0';
                if bit_index = 7 then 
                    if rw = '1' then 
                        next_state <= READ_DATA;
                    else
                        next_state <= STOP_COND;
                    end if;
                else
                    bit_index <= bit_index + 1;
                end if;
                
              when READ_DATA =>
                sda_dir <= '0'; --SDA bemenet
                if bit_index = 15 then
                    temp_data(bit_index) <= sda;
                    next_state <= STOP_COND;
                else
                    temp_data(bit_index) <= sda;
                    bit_index <= bit_index + 1;
                end if;
                
                when STOP_COND =>
                    sda_internal <= '1';
                    scl_internal <= '1';
                    next_state <= IDLE;
                    
                when others => 
                    next_state <= IDLE;
                    
          end case;         
                
    end process;

end Behavioral;
