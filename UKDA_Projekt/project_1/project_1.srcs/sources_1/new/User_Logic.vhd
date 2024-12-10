----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/10/2024 10:29:52 AM
-- Design Name: 
-- Module Name: User_Logic - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity User_Logic is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           scl : out STD_LOGIC;
           sda : inout STD_LOGIC;
           temp_out : out STD_LOGIC_VECTOR (15 downto 0);  --homerseklet adat
           press_out : out STD_LOGIC_VECTOR (15 downto 0)); --legnyomas adat
end User_Logic;

architecture Behavioral of User_Logic is

--I2C interfesz jelei
signal addr : STD_LOGIC_VECTOR(7 downto 0) := "11101110"; --BMP180 szenzor cime ami a 0xEE 
signal reg_addr : STD_LOGIC_VECTOR(7 downto 0);
signal data_in : STD_LOGIC_VECTOR(15 downto 0);
signal rw : STD_LOGIC;

--adatok feldolgozasa

signal temp_raw : INTEGER;
signal press_raw : INTEGER;

component I2C_Master
    Port(
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           scl : out STD_LOGIC;
           sda : inout STD_LOGIC;
           addr : in STD_LOGIC_VECTOR (7 downto 0);
           reg_addr : in STD_LOGIC_VECTOR (7 downto 0);
           data_in : out STD_LOGIC_VECTOR (15 downto 0);
           rw : in STD_LOGIC
    );
end component;

begin
    
    --I2C master osszekapcsolasa 
    i2c_inst : I2C_Master
        port map (
            clk => clk,
            reset => reset,
            start => start,
            scl => scl,
            sda => sda,
            addr => addr,
            reg_addr => reg_addr,
            data_in => data_in,
            rw => rw
        );
        
     --Adatok feldolgozasa
     process(clk, reset)
     begin
        if reset = '1' then
            temp_raw <= 0;
            press_raw <= 0;
        elsif clk' event and clk ='1' then 
            temp_raw <= to_integer(signed(data_in(15 downto 8)));
            press_raw <= to_integer(signed(data_in(7 downto 0)));
        end if;
      end process;
    
    --Kimeneti adatok
    temp_out <= STD_LOGIC_VECTOR(to_unsigned(temp_raw, 16));
    press_out <= STD_LOGIC_VECTOR(to_unsigned(press_raw, 16));

end Behavioral;
