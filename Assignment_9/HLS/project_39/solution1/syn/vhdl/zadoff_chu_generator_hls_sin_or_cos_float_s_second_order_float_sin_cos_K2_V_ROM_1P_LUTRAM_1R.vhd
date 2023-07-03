-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity zadoff_chu_generator_hls_sin_or_cos_float_s_second_order_float_sin_cos_K2_V_ROM_1P_LUTRAM_1R is 
    generic(
             DataWidth     : integer := 15; 
             AddressWidth     : integer := 8; 
             AddressRange    : integer := 256
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of zadoff_chu_generator_hls_sin_or_cos_float_s_second_order_float_sin_cos_K2_V_ROM_1P_LUTRAM_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "101100010000111", 1 => "101100010001000", 2 => "101100010000111", 3 => "101100010001000", 
    4 => "101100010001011", 5 => "101100010001011", 6 => "101100010001110", 7 => "101100010001111", 
    8 => "101100010010110", 9 => "101100010011001", 10 => "101100010011100", 11 => "101100010011111", 
    12 => "101100010100011", 13 => "101100010101000", 14 => "101100010101110", 15 => "101100010110100", 
    16 => "101100010111001", 17 => "101100010111110", 18 => "101100011001000", 19 => "101100011001110", 
    20 => "101100011010110", 21 => "101100011011111", 22 => "101100011100110", 23 => "101100011101110", 
    24 => "101100011111000", 25 => "101100100000010", 26 => "101100100001100", 27 => "101100100010101", 
    28 => "101100100100001", 29 => "101100100101100", 30 => "101100100110111", 31 => "101100101000010", 
    32 => "101100101001101", 33 => "101100101011100", 34 => "101100101100111", 35 => "101100101110011", 
    36 => "101100110000011", 37 => "101100110001111", 38 => "101100110100000", 39 => "101100110101011", 
    40 => "101100110111101", 41 => "101100111001100", 42 => "101100111011011", 43 => "101100111101100", 
    44 => "101100111111110", 45 => "101101000001110", 46 => "101101000011111", 47 => "101101000110001", 
    48 => "101101001000010", 49 => "101101001010011", 50 => "101101001100101", 51 => "101101001111011", 
    52 => "101101010001011", 53 => "101101010100010", 54 => "101101010110100", 55 => "101101011001100", 
    56 => "101101011011110", 57 => "101101011110011", 58 => "101101100001010", 59 => "101101100100001", 
    60 => "101101100110110", 61 => "101101101001011", 62 => "101101101100010", 63 => "101101101111100", 
    64 => "101101110010000", 65 => "101101110101100", 66 => "101101111000100", 67 => "101101111011011", 
    68 => "101101111110111", 69 => "101110000001110", 70 => "101110000101011", 71 => "101110001000011", 
    72 => "101110001011110", 73 => "101110001111001", 74 => "101110010010010", 75 => "101110010101111", 
    76 => "101110011001010", 77 => "101110011100101", 78 => "101110100000100", 79 => "101110100011111", 
    80 => "101110100111101", 81 => "101110101011011", 82 => "101110101111010", 83 => "101110110011000", 
    84 => "101110110110110", 85 => "101110111010101", 86 => "101110111110101", 87 => "101111000010101", 
    88 => "101111000110010", 89 => "101111001010101", 90 => "101111001110100", 91 => "101111010010101", 
    92 => "101111010110101", 93 => "101111011011001", 94 => "101111011111001", 95 => "101111100011011", 
    96 => "101111100111100", 97 => "101111101100010", 98 => "101111110000100", 99 => "101111110100110", 
    100 => "101111111001011", 101 => "101111111101111", 102 => "110000000010110", 103 => "110000000111000", 
    104 => "110000001011011", 105 => "110000010000001", 106 => "110000010100111", 107 => "110000011001101", 
    108 => "110000011110011", 109 => "110000100011000", 110 => "110000101000001", 111 => "110000101101000", 
    112 => "110000110001110", 113 => "110000110110111", 114 => "110000111011101", 115 => "110001000000111", 
    116 => "110001000101110", 117 => "110001001011000", 118 => "110001010000001", 119 => "110001010101010", 
    120 => "110001011010101", 121 => "110001100000000", 122 => "110001100100111", 123 => "110001101010001", 
    124 => "110001101111110", 125 => "110001110101100", 126 => "110001111010010", 127 => "110001111111111", 
    128 => "111010110101000", 129 => "111010110101001", 130 => "111010110101011", 131 => "111010110101100", 
    132 => "111010110101101", 133 => "111010110101011", 134 => "111010110101110", 135 => "111010110101101", 
    136 => "111010110101101", 137 => "111010110101110", 138 => "111010110101101", 139 => "111010110101101", 
    140 => "111010110101111", 141 => "111010110110000", 142 => "111010110110000", 143 => "111010110110001", 
    144 => "111010110110010", 145 => "111010110110010", 146 => "111010110110010", 147 => "111010110110011", 
    148 => "111010110110101", 149 => "111010110110111", 150 => "111010110111010", 151 => "111010110111010", 
    152 => "111010110111100", 153 => "111010110111111", 154 => "111010111000000", 155 => "111010111000000", 
    156 => "111010111000010", 157 => "111010111000100", 158 => "111010111000100", 159 => "111010111000110", 
    160 => "111010111001000", 161 => "111010111001100", 162 => "111010111001110", 163 => "111010111001111", 
    164 => "111010111010001", 165 => "111010111010101", 166 => "111010111011000", 167 => "111010111011011", 
    168 => "111010111011101", 169 => "111010111011111", 170 => "111010111100010", 171 => "111010111100011", 
    172 => "111010111100101", 173 => "111010111101001", 174 => "111010111101011", 175 => "111010111101101", 
    176 => "111010111101111", 177 => "111010111110001", 178 => "111010111110110", 179 => "111010111111001", 
    180 => "111010111111011", 181 => "111010111111111", 182 => "111011000000100", 183 => "111011000000110", 
    184 => "111011000000111", 185 => "111011000001010", 186 => "111011000010010", 187 => "111011000010100", 
    188 => "111011000010101", 189 => "111011000011100", 190 => "111011000011110", 191 => "111011000100010", 
    192 => "111011000100110", 193 => "111011000101000", 194 => "111011000101100", 195 => "111011000110000", 
    196 => "111011000110110", 197 => "111011000111001", 198 => "111011000111101", 199 => "111011001000001", 
    200 => "111011001000011", 201 => "111011001001100", 202 => "111011001001110", 203 => "111011001010000", 
    204 => "111011001010100", 205 => "111011001011110", 206 => "111011001100010", 207 => "111011001100111", 
    208 => "111011001101010", 209 => "111011001101101", 210 => "111011001110001", 211 => "111011001111010", 
    212 => "111011001111110", 213 => "111011010000000", 214 => "111011010000101", 215 => "111011010001100", 
    216 => "111011010010000", 217 => "111011010011000", 218 => "111011010011010", 219 => "111011010100000", 
    220 => "111011010100100", 221 => "111011010101011", 222 => "111011010110001", 223 => "111011010110111", 
    224 => "111011010111011", 225 => "111011011000001", 226 => "111011011000110", 227 => "111011011001010", 
    228 => "111011011010010", 229 => "111011011010110", 230 => "111011011011110", 231 => "111011011100011", 
    232 => "111011011101000", 233 => "111011011101101", 234 => "111011011110110", 235 => "111011011111100", 
    236 => "111011100000011", 237 => "111011100000111", 238 => "111011100001110", 239 => "111011100010011", 
    240 => "111011100011001", 241 => "111011100011111", 242 => "111011100100110", 243 => "111011100101100", 
    244 => "111011100110010", 245 => "111011100111101", 246 => "111011101000011", 247 => "111011101001001", 
    248 => "111011101001101", 249 => "111011101010101", 250 => "111011101011100", 251 => "111011101100010", 
    252 => "111011101101010", 253 => "111011101101111", 254 => "111011101111000", 255 => "111011101111110");



attribute syn_rom_style : string;

attribute syn_rom_style of mem0 : signal is "select_rom"; 
attribute ROM_STYLE : string;

attribute ROM_STYLE of mem0 : signal is "distributed";

begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

