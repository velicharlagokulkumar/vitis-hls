-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut_dut_Pipeline_VITIS_LOOP_33_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    output_r_TREADY : IN STD_LOGIC;
    trunc_ln : IN STD_LOGIC_VECTOR (5 downto 0);
    trunc_ln1 : IN STD_LOGIC_VECTOR (2 downto 0);
    output_r_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    output_r_TVALID : OUT STD_LOGIC );
end;


architecture behav of dut_dut_Pipeline_VITIS_LOOP_33_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1027_fu_211_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal bram1_0_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal bram1_0_ce0 : STD_LOGIC;
    signal bram1_0_q0 : STD_LOGIC_VECTOR (2 downto 0);
    signal bram1_1_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal bram1_1_ce0 : STD_LOGIC;
    signal bram1_1_q0 : STD_LOGIC_VECTOR (3 downto 0);
    signal bram1_2_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal bram1_2_ce0 : STD_LOGIC;
    signal bram1_2_q0 : STD_LOGIC_VECTOR (4 downto 0);
    signal bram1_3_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal bram1_3_ce0 : STD_LOGIC;
    signal bram1_3_q0 : STD_LOGIC_VECTOR (3 downto 0);
    signal bram1_4_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal bram1_4_ce0 : STD_LOGIC;
    signal bram1_4_q0 : STD_LOGIC_VECTOR (5 downto 0);
    signal bram1_5_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal bram1_5_ce0 : STD_LOGIC;
    signal bram1_5_q0 : STD_LOGIC_VECTOR (5 downto 0);
    signal bram1_6_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal bram1_6_ce0 : STD_LOGIC;
    signal bram1_6_q0 : STD_LOGIC_VECTOR (4 downto 0);
    signal bram1_7_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal bram1_7_ce0 : STD_LOGIC;
    signal bram1_7_q0 : STD_LOGIC_VECTOR (3 downto 0);
    signal output_r_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal trunc_ln2_reg_386 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln35_fu_243_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal rhs_fu_76 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_V_fu_217_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_V_3 : STD_LOGIC_VECTOR (3 downto 0);
    signal bundle1_V_fu_314_p10 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln1495_fu_223_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln1495_fu_227_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln1495_1_fu_237_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ret_V_fu_231_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal sext_ln35_fu_282_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal sext_ln35_1_fu_298_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal sext_ln35_2_fu_306_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal bundle1_V_fu_314_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal bundle1_V_fu_314_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal bundle1_V_fu_314_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal bundle1_V_fu_314_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal bundle1_V_fu_314_p5 : STD_LOGIC_VECTOR (7 downto 0);
    signal bundle1_V_fu_314_p6 : STD_LOGIC_VECTOR (7 downto 0);
    signal bundle1_V_fu_314_p7 : STD_LOGIC_VECTOR (7 downto 0);
    signal bundle1_V_fu_314_p8 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component dut_mux_83_8_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (7 downto 0);
        din3 : IN STD_LOGIC_VECTOR (7 downto 0);
        din4 : IN STD_LOGIC_VECTOR (7 downto 0);
        din5 : IN STD_LOGIC_VECTOR (7 downto 0);
        din6 : IN STD_LOGIC_VECTOR (7 downto 0);
        din7 : IN STD_LOGIC_VECTOR (7 downto 0);
        din8 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_0_RAM_1P_BRAM_1R1W IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (2 downto 0) );
    end component;


    component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_1_RAM_1P_BRAM_1R1W IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (3 downto 0) );
    end component;


    component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_2_RAM_1P_BRAM_1R1W IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (4 downto 0) );
    end component;


    component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_4_RAM_1P_BRAM_1R1W IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (5 downto 0) );
    end component;


    component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_5_RAM_1P_BRAM_1R1W IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (5 downto 0) );
    end component;


    component dut_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    bram1_0_U : component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_0_RAM_1P_BRAM_1R1W
    generic map (
        DataWidth => 3,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => bram1_0_address0,
        ce0 => bram1_0_ce0,
        q0 => bram1_0_q0);

    bram1_1_U : component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_1_RAM_1P_BRAM_1R1W
    generic map (
        DataWidth => 4,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => bram1_1_address0,
        ce0 => bram1_1_ce0,
        q0 => bram1_1_q0);

    bram1_2_U : component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_2_RAM_1P_BRAM_1R1W
    generic map (
        DataWidth => 5,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => bram1_2_address0,
        ce0 => bram1_2_ce0,
        q0 => bram1_2_q0);

    bram1_3_U : component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_1_RAM_1P_BRAM_1R1W
    generic map (
        DataWidth => 4,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => bram1_3_address0,
        ce0 => bram1_3_ce0,
        q0 => bram1_3_q0);

    bram1_4_U : component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_4_RAM_1P_BRAM_1R1W
    generic map (
        DataWidth => 6,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => bram1_4_address0,
        ce0 => bram1_4_ce0,
        q0 => bram1_4_q0);

    bram1_5_U : component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_5_RAM_1P_BRAM_1R1W
    generic map (
        DataWidth => 6,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => bram1_5_address0,
        ce0 => bram1_5_ce0,
        q0 => bram1_5_q0);

    bram1_6_U : component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_2_RAM_1P_BRAM_1R1W
    generic map (
        DataWidth => 5,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => bram1_6_address0,
        ce0 => bram1_6_ce0,
        q0 => bram1_6_q0);

    bram1_7_U : component dut_dut_Pipeline_VITIS_LOOP_33_2_bram1_1_RAM_1P_BRAM_1R1W
    generic map (
        DataWidth => 4,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => bram1_7_address0,
        ce0 => bram1_7_ce0,
        q0 => bram1_7_q0);

    mux_83_8_1_1_U1 : component dut_mux_83_8_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 8,
        din3_WIDTH => 8,
        din4_WIDTH => 8,
        din5_WIDTH => 8,
        din6_WIDTH => 8,
        din7_WIDTH => 8,
        din8_WIDTH => 3,
        dout_WIDTH => 8)
    port map (
        din0 => bundle1_V_fu_314_p1,
        din1 => bundle1_V_fu_314_p2,
        din2 => bundle1_V_fu_314_p3,
        din3 => bundle1_V_fu_314_p4,
        din4 => bundle1_V_fu_314_p5,
        din5 => bundle1_V_fu_314_p6,
        din6 => bundle1_V_fu_314_p7,
        din7 => bundle1_V_fu_314_p8,
        din8 => trunc_ln2_reg_386,
        dout => bundle1_V_fu_314_p10);

    flow_control_loop_pipe_sequential_init_U : component dut_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    rhs_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln1027_fu_211_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    rhs_fu_76 <= j_V_fu_217_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    rhs_fu_76 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1027_fu_211_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                trunc_ln2_reg_386 <= ret_V_fu_231_p2(5 downto 3);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln1495_1_fu_237_p2 <= std_logic_vector(unsigned(trunc_ln1495_fu_227_p1) + unsigned(trunc_ln1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, output_r_TREADY)
    begin
                ap_block_pp0_stage0_01001 <= ((output_r_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, output_r_TREADY)
    begin
                ap_block_pp0_stage0_11001 <= ((output_r_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, output_r_TREADY)
    begin
                ap_block_pp0_stage0_subdone <= ((output_r_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(output_r_TREADY)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (output_r_TREADY = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln1027_fu_211_p2)
    begin
        if (((icmp_ln1027_fu_211_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_j_V_3_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, rhs_fu_76, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_V_3 <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_j_V_3 <= rhs_fu_76;
        end if; 
    end process;

    bram1_0_address0 <= zext_ln35_fu_243_p1(3 - 1 downto 0);

    bram1_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bram1_0_ce0 <= ap_const_logic_1;
        else 
            bram1_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    bram1_1_address0 <= zext_ln35_fu_243_p1(3 - 1 downto 0);

    bram1_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bram1_1_ce0 <= ap_const_logic_1;
        else 
            bram1_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    bram1_2_address0 <= zext_ln35_fu_243_p1(3 - 1 downto 0);

    bram1_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bram1_2_ce0 <= ap_const_logic_1;
        else 
            bram1_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    bram1_3_address0 <= zext_ln35_fu_243_p1(3 - 1 downto 0);

    bram1_3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bram1_3_ce0 <= ap_const_logic_1;
        else 
            bram1_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    bram1_4_address0 <= zext_ln35_fu_243_p1(3 - 1 downto 0);

    bram1_4_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bram1_4_ce0 <= ap_const_logic_1;
        else 
            bram1_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    bram1_5_address0 <= zext_ln35_fu_243_p1(3 - 1 downto 0);

    bram1_5_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bram1_5_ce0 <= ap_const_logic_1;
        else 
            bram1_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    bram1_6_address0 <= zext_ln35_fu_243_p1(3 - 1 downto 0);

    bram1_6_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bram1_6_ce0 <= ap_const_logic_1;
        else 
            bram1_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    bram1_7_address0 <= zext_ln35_fu_243_p1(3 - 1 downto 0);

    bram1_7_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bram1_7_ce0 <= ap_const_logic_1;
        else 
            bram1_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    bundle1_V_fu_314_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bram1_0_q0),8));
    bundle1_V_fu_314_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bram1_1_q0),8));
    bundle1_V_fu_314_p3 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bram1_2_q0),8));
    bundle1_V_fu_314_p4 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln35_fu_282_p1),8));
    bundle1_V_fu_314_p5 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bram1_4_q0),8));
    bundle1_V_fu_314_p6 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bram1_5_q0),8));
    bundle1_V_fu_314_p7 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln35_1_fu_298_p1),8));
    bundle1_V_fu_314_p8 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln35_2_fu_306_p1),8));
    icmp_ln1027_fu_211_p2 <= "1" when (ap_sig_allocacmp_j_V_3 = ap_const_lv4_8) else "0";
    j_V_fu_217_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j_V_3) + unsigned(ap_const_lv4_1));
    output_r_TDATA <= bundle1_V_fu_314_p10;

    output_r_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, output_r_TREADY, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            output_r_TDATA_blk_n <= output_r_TREADY;
        else 
            output_r_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    output_r_TVALID_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            output_r_TVALID <= ap_const_logic_1;
        else 
            output_r_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    ret_V_fu_231_p2 <= std_logic_vector(unsigned(zext_ln1495_fu_223_p1) + unsigned(trunc_ln));
        sext_ln35_1_fu_298_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(bram1_6_q0),6));

        sext_ln35_2_fu_306_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(bram1_7_q0),6));

        sext_ln35_fu_282_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(bram1_3_q0),5));

    trunc_ln1495_fu_227_p1 <= ap_sig_allocacmp_j_V_3(3 - 1 downto 0);
    zext_ln1495_fu_223_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_j_V_3),6));
    zext_ln35_fu_243_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1495_1_fu_237_p2),64));
end behav;
