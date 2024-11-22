module uart (DATA_IN_Rx,
    DATA_OUT_Tx,
    EN,
    IRQ_Rx,
    IRQ_Tx,
    RST,
    UART_AVAIL,
    UART_BITS,
    UART_PARITY,
    UART_WRITE,
    clk_CPU,
    uart_clock,
    DATA_IN_Tx,
    DATA_OUT_Rx,
    bitrate);
 input DATA_IN_Rx;
 output DATA_OUT_Tx;
 input EN;
 output IRQ_Rx;
 output IRQ_Tx;
 input RST;
 output UART_AVAIL;
 input UART_BITS;
 input UART_PARITY;
 input UART_WRITE;
 input clk_CPU;
 output uart_clock;
 input [7:0] DATA_IN_Tx;
 output [9:0] DATA_OUT_Rx;
 input [3:0] bitrate;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire \uart1.counter[0] ;
 wire \uart1.counter[1] ;
 wire \uart1.counter[2] ;
 wire \uart1.counter[3] ;
 wire \uart1.counter[4] ;
 wire \uart1.counter[5] ;
 wire \uart1.counter[6] ;
 wire \uart1.counter[7] ;
 wire \uart1.counter[8] ;
 wire \uart1.counter[9] ;
 wire \uart2.next[0] ;
 wire \uart2.next[1] ;
 wire \uart2.next[2] ;
 wire \uart2.next[3] ;
 wire \uart2.state[0] ;
 wire \uart2.state[1] ;
 wire \uart2.state[2] ;
 wire \uart2.state[3] ;
 wire \uart3.next[0] ;
 wire \uart3.next[1] ;
 wire \uart3.next[2] ;
 wire \uart3.next[3] ;
 wire \uart3.state[0] ;
 wire \uart3.state[1] ;
 wire \uart3.state[2] ;
 wire \uart3.state[3] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;

 sky130_fd_sc_hd__inv_2 _169_ (.A(\uart2.state[1] ),
    .Y(_150_));
 sky130_fd_sc_hd__inv_2 _170_ (.A(net18),
    .Y(_151_));
 sky130_fd_sc_hd__inv_2 _171_ (.A(\uart1.counter[4] ),
    .Y(_152_));
 sky130_fd_sc_hd__inv_2 _172_ (.A(\uart1.counter[5] ),
    .Y(_153_));
 sky130_fd_sc_hd__inv_2 _173_ (.A(\uart1.counter[6] ),
    .Y(_154_));
 sky130_fd_sc_hd__inv_2 _174_ (.A(\uart1.counter[8] ),
    .Y(_155_));
 sky130_fd_sc_hd__inv_2 _175_ (.A(net12),
    .Y(_156_));
 sky130_fd_sc_hd__inv_2 _176_ (.A(net31),
    .Y(_157_));
 sky130_fd_sc_hd__and2_1 _177_ (.A(\uart2.state[3] ),
    .B(\uart2.state[2] ),
    .X(_158_));
 sky130_fd_sc_hd__nor2_1 _178_ (.A(\uart2.state[1] ),
    .B(\uart2.state[0] ),
    .Y(_159_));
 sky130_fd_sc_hd__nor2_1 _179_ (.A(\uart2.state[3] ),
    .B(\uart2.state[2] ),
    .Y(_160_));
 sky130_fd_sc_hd__o2bb2a_1 _180_ (.A1_N(\uart2.state[3] ),
    .A2_N(\uart2.state[2] ),
    .B1(\uart2.state[1] ),
    .B2(\uart2.state[0] ),
    .X(_161_));
 sky130_fd_sc_hd__a21oi_1 _181_ (.A1(_159_),
    .A2(_160_),
    .B1(_158_),
    .Y(_162_));
 sky130_fd_sc_hd__o31ai_1 _182_ (.A1(\uart2.state[1] ),
    .A2(\uart2.state[0] ),
    .A3(_156_),
    .B1(net13),
    .Y(_163_));
 sky130_fd_sc_hd__and2b_1 _183_ (.A_N(\uart2.state[2] ),
    .B(\uart2.state[3] ),
    .X(_164_));
 sky130_fd_sc_hd__and3_1 _184_ (.A(_150_),
    .B(_163_),
    .C(_164_),
    .X(_165_));
 sky130_fd_sc_hd__a21oi_1 _185_ (.A1(_150_),
    .A2(\uart2.state[3] ),
    .B1(\uart2.state[0] ),
    .Y(_166_));
 sky130_fd_sc_hd__o32a_1 _186_ (.A1(_158_),
    .A2(_165_),
    .A3(_166_),
    .B1(_162_),
    .B2(net14),
    .X(\uart2.next[0] ));
 sky130_fd_sc_hd__nand2_1 _187_ (.A(\uart2.state[1] ),
    .B(\uart2.state[0] ),
    .Y(_167_));
 sky130_fd_sc_hd__a32o_1 _188_ (.A1(_164_),
    .A2(_156_),
    .A3(_159_),
    .B1(_161_),
    .B2(_167_),
    .X(\uart2.next[1] ));
 sky130_fd_sc_hd__and2b_1 _189_ (.A_N(\uart2.state[3] ),
    .B(\uart2.state[2] ),
    .X(_168_));
 sky130_fd_sc_hd__mux2_1 _190_ (.A0(_160_),
    .A1(_168_),
    .S(_167_),
    .X(\uart2.next[2] ));
 sky130_fd_sc_hd__mux2_1 _191_ (.A0(_168_),
    .A1(_164_),
    .S(_167_),
    .X(\uart2.next[3] ));
 sky130_fd_sc_hd__and2b_1 _192_ (.A_N(\uart3.state[1] ),
    .B(\uart3.state[0] ),
    .X(_022_));
 sky130_fd_sc_hd__and2b_2 _193_ (.A_N(\uart3.state[2] ),
    .B(\uart3.state[3] ),
    .X(_023_));
 sky130_fd_sc_hd__and4bb_1 _194_ (.A_N(\uart3.state[2] ),
    .B_N(\uart3.state[1] ),
    .C(\uart3.state[0] ),
    .D(\uart3.state[3] ),
    .X(_024_));
 sky130_fd_sc_hd__nor2_1 _195_ (.A(\uart3.state[0] ),
    .B(\uart3.state[1] ),
    .Y(_025_));
 sky130_fd_sc_hd__o211a_1 _196_ (.A1(\uart3.state[0] ),
    .A2(\uart3.state[1] ),
    .B1(\uart3.state[2] ),
    .C1(\uart3.state[3] ),
    .X(_026_));
 sky130_fd_sc_hd__o21ba_1 _197_ (.A1(_024_),
    .A2(_026_),
    .B1_N(net1),
    .X(_027_));
 sky130_fd_sc_hd__nor2_1 _198_ (.A(\uart3.state[2] ),
    .B(\uart3.state[3] ),
    .Y(_028_));
 sky130_fd_sc_hd__a21oi_1 _199_ (.A1(\uart3.state[2] ),
    .A2(\uart3.state[3] ),
    .B1(\uart3.state[0] ),
    .Y(_029_));
 sky130_fd_sc_hd__o31a_1 _200_ (.A1(\uart3.state[2] ),
    .A2(\uart3.state[3] ),
    .A3(\uart3.state[1] ),
    .B1(_029_),
    .X(_030_));
 sky130_fd_sc_hd__mux2_1 _201_ (.A0(_025_),
    .A1(_022_),
    .S(net1),
    .X(_031_));
 sky130_fd_sc_hd__a211o_1 _202_ (.A1(_028_),
    .A2(_031_),
    .B1(_030_),
    .C1(_027_),
    .X(\uart3.next[0] ));
 sky130_fd_sc_hd__or3b_1 _203_ (.A(\uart3.state[2] ),
    .B(\uart3.state[0] ),
    .C_N(\uart3.state[1] ),
    .X(_032_));
 sky130_fd_sc_hd__a31o_1 _204_ (.A1(\uart3.state[2] ),
    .A2(\uart3.state[3] ),
    .A3(_025_),
    .B1(_024_),
    .X(_033_));
 sky130_fd_sc_hd__and4bb_1 _205_ (.A_N(\uart3.state[2] ),
    .B_N(net1),
    .C(_025_),
    .D(\uart3.state[3] ),
    .X(_034_));
 sky130_fd_sc_hd__nand2_1 _206_ (.A(\uart3.state[0] ),
    .B(\uart3.state[1] ),
    .Y(_035_));
 sky130_fd_sc_hd__nand2b_1 _207_ (.A_N(\uart3.state[3] ),
    .B(\uart3.state[2] ),
    .Y(_036_));
 sky130_fd_sc_hd__a21oi_1 _208_ (.A1(\uart3.state[0] ),
    .A2(\uart3.state[1] ),
    .B1(_036_),
    .Y(_037_));
 sky130_fd_sc_hd__o21a_1 _209_ (.A1(\uart3.state[0] ),
    .A2(\uart3.state[1] ),
    .B1(_037_),
    .X(_038_));
 sky130_fd_sc_hd__or4b_1 _210_ (.A(_033_),
    .B(_034_),
    .C(_038_),
    .D_N(_032_),
    .X(\uart3.next[1] ));
 sky130_fd_sc_hd__and4bb_1 _211_ (.A_N(\uart3.state[1] ),
    .B_N(net1),
    .C(_028_),
    .D(\uart3.state[0] ),
    .X(_039_));
 sky130_fd_sc_hd__a311o_1 _212_ (.A1(\uart3.state[0] ),
    .A2(\uart3.state[1] ),
    .A3(_028_),
    .B1(_037_),
    .C1(_039_),
    .X(\uart3.next[2] ));
 sky130_fd_sc_hd__and4b_1 _213_ (.A_N(\uart3.state[3] ),
    .B(\uart3.state[0] ),
    .C(\uart3.state[1] ),
    .D(\uart3.state[2] ),
    .X(_040_));
 sky130_fd_sc_hd__a211o_1 _214_ (.A1(_035_),
    .A2(_023_),
    .B1(_040_),
    .C1(_039_),
    .X(\uart3.next[3] ));
 sky130_fd_sc_hd__nor2_1 _215_ (.A(net17),
    .B(net16),
    .Y(_041_));
 sky130_fd_sc_hd__nor2_1 _216_ (.A(net17),
    .B(net15),
    .Y(_042_));
 sky130_fd_sc_hd__a21o_2 _217_ (.A1(net16),
    .A2(net15),
    .B1(net17),
    .X(_043_));
 sky130_fd_sc_hd__a21oi_1 _218_ (.A1(net17),
    .A2(net16),
    .B1(net18),
    .Y(_044_));
 sky130_fd_sc_hd__nand2_1 _219_ (.A(_043_),
    .B(_044_),
    .Y(_045_));
 sky130_fd_sc_hd__or4bb_1 _220_ (.A(net17),
    .B(net15),
    .C_N(net18),
    .D_N(net16),
    .X(_046_));
 sky130_fd_sc_hd__nand3_1 _221_ (.A(_046_),
    .B(\uart1.counter[3] ),
    .C(_045_),
    .Y(_047_));
 sky130_fd_sc_hd__a21o_1 _222_ (.A1(_045_),
    .A2(_046_),
    .B1(\uart1.counter[3] ),
    .X(_048_));
 sky130_fd_sc_hd__nor2_1 _223_ (.A(net16),
    .B(net15),
    .Y(_049_));
 sky130_fd_sc_hd__o22a_1 _224_ (.A1(net17),
    .A2(net18),
    .B1(_043_),
    .B2(_049_),
    .X(_050_));
 sky130_fd_sc_hd__o22ai_1 _225_ (.A1(net17),
    .A2(net18),
    .B1(_043_),
    .B2(_049_),
    .Y(_051_));
 sky130_fd_sc_hd__o21ai_1 _226_ (.A1(net16),
    .A2(net15),
    .B1(net18),
    .Y(_052_));
 sky130_fd_sc_hd__nor2_1 _227_ (.A(_052_),
    .B(_043_),
    .Y(_053_));
 sky130_fd_sc_hd__o21ai_1 _228_ (.A1(_052_),
    .A2(_043_),
    .B1(\uart1.counter[9] ),
    .Y(_054_));
 sky130_fd_sc_hd__o2111a_1 _229_ (.A1(_155_),
    .A2(_050_),
    .B1(_054_),
    .C1(_047_),
    .D1(_048_),
    .X(_055_));
 sky130_fd_sc_hd__o21ai_2 _230_ (.A1(net17),
    .A2(net16),
    .B1(net18),
    .Y(_056_));
 sky130_fd_sc_hd__o21ai_2 _231_ (.A1(net16),
    .A2(net15),
    .B1(_151_),
    .Y(_057_));
 sky130_fd_sc_hd__nand3b_1 _232_ (.A_N(net17),
    .B(net16),
    .C(net15),
    .Y(_058_));
 sky130_fd_sc_hd__o211ai_2 _233_ (.A1(net16),
    .A2(net15),
    .B1(_151_),
    .C1(_058_),
    .Y(_059_));
 sky130_fd_sc_hd__o211ai_1 _234_ (.A1(_041_),
    .A2(_151_),
    .B1(_153_),
    .C1(_059_),
    .Y(_060_));
 sky130_fd_sc_hd__a21o_1 _235_ (.A1(_056_),
    .A2(_059_),
    .B1(_153_),
    .X(_061_));
 sky130_fd_sc_hd__and2b_1 _236_ (.A_N(net18),
    .B(net15),
    .X(_062_));
 sky130_fd_sc_hd__o22a_1 _237_ (.A1(_042_),
    .A2(_062_),
    .B1(_043_),
    .B2(_057_),
    .X(_063_));
 sky130_fd_sc_hd__o22ai_2 _238_ (.A1(_042_),
    .A2(_062_),
    .B1(_043_),
    .B2(_057_),
    .Y(_064_));
 sky130_fd_sc_hd__and2b_1 _239_ (.A_N(\uart1.counter[0] ),
    .B(net10),
    .X(_065_));
 sky130_fd_sc_hd__o21ai_2 _240_ (.A1(_151_),
    .A2(_041_),
    .B1(net15),
    .Y(_066_));
 sky130_fd_sc_hd__nand2b_1 _241_ (.A_N(net17),
    .B(net15),
    .Y(_067_));
 sky130_fd_sc_hd__nor3b_1 _242_ (.A(net17),
    .B(net16),
    .C_N(net15),
    .Y(_068_));
 sky130_fd_sc_hd__a21boi_1 _243_ (.A1(_066_),
    .A2(\uart1.counter[1] ),
    .B1_N(_065_),
    .Y(_069_));
 sky130_fd_sc_hd__o2111a_1 _244_ (.A1(_154_),
    .A2(_063_),
    .B1(_069_),
    .C1(_060_),
    .D1(_061_),
    .X(_070_));
 sky130_fd_sc_hd__a21oi_1 _245_ (.A1(_067_),
    .A2(_044_),
    .B1(\uart1.counter[7] ),
    .Y(_071_));
 sky130_fd_sc_hd__o21ba_1 _246_ (.A1(_053_),
    .A2(_071_),
    .B1_N(\uart1.counter[9] ),
    .X(_072_));
 sky130_fd_sc_hd__o21bai_1 _247_ (.A1(_053_),
    .A2(_071_),
    .B1_N(\uart1.counter[9] ),
    .Y(_073_));
 sky130_fd_sc_hd__o21ai_1 _248_ (.A1(net17),
    .A2(net15),
    .B1(net16),
    .Y(_074_));
 sky130_fd_sc_hd__nand3b_1 _249_ (.A_N(\uart1.counter[2] ),
    .B(_056_),
    .C(_074_),
    .Y(_075_));
 sky130_fd_sc_hd__a21bo_1 _250_ (.A1(_056_),
    .A2(_074_),
    .B1_N(\uart1.counter[2] ),
    .X(_076_));
 sky130_fd_sc_hd__o211ai_1 _251_ (.A1(\uart1.counter[1] ),
    .A2(_066_),
    .B1(_075_),
    .C1(_076_),
    .Y(_077_));
 sky130_fd_sc_hd__nor2_1 _252_ (.A(_077_),
    .B(_072_),
    .Y(_078_));
 sky130_fd_sc_hd__nand3_1 _253_ (.A(_055_),
    .B(_070_),
    .C(_078_),
    .Y(_079_));
 sky130_fd_sc_hd__o2bb2ai_1 _254_ (.A1_N(_044_),
    .A2_N(_067_),
    .B1(_052_),
    .B2(_043_),
    .Y(_080_));
 sky130_fd_sc_hd__nand3_1 _255_ (.A(net17),
    .B(net16),
    .C(net15),
    .Y(_081_));
 sky130_fd_sc_hd__o211ai_1 _256_ (.A1(net16),
    .A2(net15),
    .B1(_151_),
    .C1(_081_),
    .Y(_082_));
 sky130_fd_sc_hd__nand2_1 _257_ (.A(_049_),
    .B(_151_),
    .Y(_083_));
 sky130_fd_sc_hd__nand3_1 _258_ (.A(net15),
    .B(net18),
    .C(_041_),
    .Y(_084_));
 sky130_fd_sc_hd__nand4_1 _259_ (.A(_151_),
    .B(net15),
    .C(net16),
    .D(net17),
    .Y(_085_));
 sky130_fd_sc_hd__o21ai_2 _260_ (.A1(_151_),
    .A2(_068_),
    .B1(_082_),
    .Y(_086_));
 sky130_fd_sc_hd__o2bb2ai_1 _261_ (.A1_N(_080_),
    .A2_N(\uart1.counter[7] ),
    .B1(_152_),
    .B2(_086_),
    .Y(_087_));
 sky130_fd_sc_hd__o221ai_1 _262_ (.A1(_042_),
    .A2(_062_),
    .B1(_043_),
    .B2(_057_),
    .C1(_154_),
    .Y(_088_));
 sky130_fd_sc_hd__o221ai_2 _263_ (.A1(net17),
    .A2(net18),
    .B1(_043_),
    .B2(_049_),
    .C1(_155_),
    .Y(_089_));
 sky130_fd_sc_hd__o22a_1 _264_ (.A1(\uart1.counter[8] ),
    .A2(_051_),
    .B1(_064_),
    .B2(\uart1.counter[6] ),
    .X(_090_));
 sky130_fd_sc_hd__nand4_1 _265_ (.A(_152_),
    .B(_083_),
    .C(_084_),
    .D(_085_),
    .Y(_091_));
 sky130_fd_sc_hd__nand3_1 _266_ (.A(_088_),
    .B(_089_),
    .C(_091_),
    .Y(_092_));
 sky130_fd_sc_hd__nor2_1 _267_ (.A(_087_),
    .B(_092_),
    .Y(_093_));
 sky130_fd_sc_hd__nand4_4 _268_ (.A(_055_),
    .B(_070_),
    .C(_078_),
    .D(_093_),
    .Y(_094_));
 sky130_fd_sc_hd__o211a_1 _269_ (.A1(\uart1.counter[1] ),
    .A2(_066_),
    .B1(_065_),
    .C1(_054_),
    .X(_095_));
 sky130_fd_sc_hd__o2111ai_1 _270_ (.A1(\uart1.counter[6] ),
    .A2(_064_),
    .B1(_089_),
    .C1(_091_),
    .D1(_095_),
    .Y(_096_));
 sky130_fd_sc_hd__a21boi_1 _271_ (.A1(_051_),
    .A2(\uart1.counter[8] ),
    .B1_N(_075_),
    .Y(_097_));
 sky130_fd_sc_hd__nand4_1 _272_ (.A(_097_),
    .B(_073_),
    .C(_048_),
    .D(_047_),
    .Y(_098_));
 sky130_fd_sc_hd__a21boi_1 _273_ (.A1(\uart1.counter[1] ),
    .A2(_066_),
    .B1_N(_076_),
    .Y(_099_));
 sky130_fd_sc_hd__a32oi_1 _274_ (.A1(_153_),
    .A2(_056_),
    .A3(_059_),
    .B1(_064_),
    .B2(\uart1.counter[6] ),
    .Y(_100_));
 sky130_fd_sc_hd__nand4b_1 _275_ (.A_N(_087_),
    .B(_099_),
    .C(_100_),
    .D(_061_),
    .Y(_101_));
 sky130_fd_sc_hd__nor3_1 _276_ (.A(_096_),
    .B(_098_),
    .C(_101_),
    .Y(_102_));
 sky130_fd_sc_hd__a22oi_1 _277_ (.A1(_080_),
    .A2(\uart1.counter[7] ),
    .B1(_152_),
    .B2(_086_),
    .Y(_103_));
 sky130_fd_sc_hd__o2111ai_1 _278_ (.A1(_152_),
    .A2(_086_),
    .B1(_157_),
    .C1(_103_),
    .D1(_090_),
    .Y(_104_));
 sky130_fd_sc_hd__o2bb2ai_1 _279_ (.A1_N(net31),
    .A2_N(_094_),
    .B1(_104_),
    .B2(_079_),
    .Y(_000_));
 sky130_fd_sc_hd__o21ai_1 _280_ (.A1(\uart3.state[0] ),
    .A2(\uart3.state[1] ),
    .B1(_023_),
    .Y(_105_));
 sky130_fd_sc_hd__a32o_1 _281_ (.A1(net1),
    .A2(_022_),
    .A3(_023_),
    .B1(_105_),
    .B2(net26),
    .X(_001_));
 sky130_fd_sc_hd__or3b_1 _282_ (.A(\uart3.state[2] ),
    .B(_022_),
    .C_N(\uart3.state[3] ),
    .X(_106_));
 sky130_fd_sc_hd__a32o_1 _283_ (.A1(net1),
    .A2(_023_),
    .A3(_025_),
    .B1(_106_),
    .B2(net25),
    .X(_002_));
 sky130_fd_sc_hd__nand2_1 _284_ (.A(\uart3.state[1] ),
    .B(_023_),
    .Y(_107_));
 sky130_fd_sc_hd__or3_1 _285_ (.A(net1),
    .B(_035_),
    .C(_036_),
    .X(_108_));
 sky130_fd_sc_hd__o211a_1 _286_ (.A1(net24),
    .A2(_040_),
    .B1(_107_),
    .C1(_108_),
    .X(_003_));
 sky130_fd_sc_hd__and4bb_1 _287_ (.A_N(\uart3.state[3] ),
    .B_N(\uart3.state[0] ),
    .C(\uart3.state[1] ),
    .D(\uart3.state[2] ),
    .X(_109_));
 sky130_fd_sc_hd__or4b_1 _288_ (.A(\uart3.state[0] ),
    .B(net1),
    .C(_036_),
    .D_N(\uart3.state[1] ),
    .X(_110_));
 sky130_fd_sc_hd__o211a_1 _289_ (.A1(net23),
    .A2(_109_),
    .B1(_110_),
    .C1(_107_),
    .X(_004_));
 sky130_fd_sc_hd__and4bb_1 _290_ (.A_N(\uart3.state[2] ),
    .B_N(\uart3.state[0] ),
    .C(\uart3.state[1] ),
    .D(net1),
    .X(_111_));
 sky130_fd_sc_hd__and3_1 _291_ (.A(\uart3.state[0] ),
    .B(\uart3.state[1] ),
    .C(_023_),
    .X(_112_));
 sky130_fd_sc_hd__a211o_1 _292_ (.A1(net19),
    .A2(_032_),
    .B1(_111_),
    .C1(_112_),
    .X(_005_));
 sky130_fd_sc_hd__a31o_1 _293_ (.A1(\uart3.state[0] ),
    .A2(\uart3.state[1] ),
    .A3(_028_),
    .B1(net20),
    .X(_113_));
 sky130_fd_sc_hd__or4_1 _294_ (.A(\uart3.state[2] ),
    .B(\uart3.state[3] ),
    .C(net1),
    .D(_035_),
    .X(_114_));
 sky130_fd_sc_hd__and3_1 _295_ (.A(_107_),
    .B(_113_),
    .C(_114_),
    .X(_006_));
 sky130_fd_sc_hd__and3_1 _296_ (.A(_150_),
    .B(\uart2.state[0] ),
    .C(net5),
    .X(_115_));
 sky130_fd_sc_hd__and3_1 _297_ (.A(\uart2.state[1] ),
    .B(\uart2.state[0] ),
    .C(net7),
    .X(_116_));
 sky130_fd_sc_hd__a21o_1 _298_ (.A1(net4),
    .A2(_159_),
    .B1(_116_),
    .X(_117_));
 sky130_fd_sc_hd__o21a_1 _299_ (.A1(_115_),
    .A2(_117_),
    .B1(_168_),
    .X(_118_));
 sky130_fd_sc_hd__or3b_1 _300_ (.A(\uart2.state[1] ),
    .B(net9),
    .C_N(\uart2.state[0] ),
    .X(_119_));
 sky130_fd_sc_hd__o311a_1 _301_ (.A1(\uart2.state[1] ),
    .A2(\uart2.state[0] ),
    .A3(net8),
    .B1(_164_),
    .C1(_119_),
    .X(_120_));
 sky130_fd_sc_hd__a22oi_1 _302_ (.A1(net2),
    .A2(_160_),
    .B1(_168_),
    .B2(net6),
    .Y(_121_));
 sky130_fd_sc_hd__or4b_1 _303_ (.A(\uart2.state[3] ),
    .B(_167_),
    .C(\uart2.state[2] ),
    .D_N(net3),
    .X(_122_));
 sky130_fd_sc_hd__o311ai_1 _304_ (.A1(_150_),
    .A2(\uart2.state[0] ),
    .A3(_121_),
    .B1(_162_),
    .C1(_122_),
    .Y(_123_));
 sky130_fd_sc_hd__o32a_1 _305_ (.A1(_118_),
    .A2(_120_),
    .A3(_123_),
    .B1(_162_),
    .B2(net27),
    .X(_007_));
 sky130_fd_sc_hd__and2b_1 _306_ (.A_N(net10),
    .B(\uart1.counter[0] ),
    .X(_124_));
 sky130_fd_sc_hd__o21a_1 _307_ (.A1(_065_),
    .A2(_124_),
    .B1(_094_),
    .X(_008_));
 sky130_fd_sc_hd__and3_1 _308_ (.A(\uart1.counter[1] ),
    .B(\uart1.counter[0] ),
    .C(net10),
    .X(_125_));
 sky130_fd_sc_hd__a21oi_1 _309_ (.A1(\uart1.counter[0] ),
    .A2(net10),
    .B1(\uart1.counter[1] ),
    .Y(_126_));
 sky130_fd_sc_hd__nor2_1 _310_ (.A(_125_),
    .B(_126_),
    .Y(_127_));
 sky130_fd_sc_hd__and2_1 _311_ (.A(_094_),
    .B(_127_),
    .X(_009_));
 sky130_fd_sc_hd__and4_2 _312_ (.A(\uart1.counter[1] ),
    .B(\uart1.counter[0] ),
    .C(\uart1.counter[2] ),
    .D(net10),
    .X(_128_));
 sky130_fd_sc_hd__nor2_1 _313_ (.A(\uart1.counter[2] ),
    .B(_125_),
    .Y(_129_));
 sky130_fd_sc_hd__nor2_1 _314_ (.A(_128_),
    .B(_129_),
    .Y(_130_));
 sky130_fd_sc_hd__and2_1 _315_ (.A(_094_),
    .B(_130_),
    .X(_010_));
 sky130_fd_sc_hd__xor2_1 _316_ (.A(\uart1.counter[3] ),
    .B(_128_),
    .X(_131_));
 sky130_fd_sc_hd__and2_1 _317_ (.A(_094_),
    .B(_131_),
    .X(_011_));
 sky130_fd_sc_hd__a21oi_1 _318_ (.A1(\uart1.counter[3] ),
    .A2(_128_),
    .B1(\uart1.counter[4] ),
    .Y(_132_));
 sky130_fd_sc_hd__and3_1 _319_ (.A(\uart1.counter[3] ),
    .B(\uart1.counter[4] ),
    .C(_128_),
    .X(_133_));
 sky130_fd_sc_hd__nor2_1 _320_ (.A(_132_),
    .B(_133_),
    .Y(_134_));
 sky130_fd_sc_hd__and2_1 _321_ (.A(_094_),
    .B(_134_),
    .X(_012_));
 sky130_fd_sc_hd__xor2_1 _322_ (.A(\uart1.counter[5] ),
    .B(_133_),
    .X(_135_));
 sky130_fd_sc_hd__and2_1 _323_ (.A(_094_),
    .B(_135_),
    .X(_013_));
 sky130_fd_sc_hd__and3_1 _324_ (.A(\uart1.counter[4] ),
    .B(\uart1.counter[5] ),
    .C(\uart1.counter[6] ),
    .X(_136_));
 sky130_fd_sc_hd__a21oi_1 _325_ (.A1(\uart1.counter[5] ),
    .A2(_133_),
    .B1(\uart1.counter[6] ),
    .Y(_137_));
 sky130_fd_sc_hd__a41oi_1 _326_ (.A1(\uart1.counter[2] ),
    .A2(\uart1.counter[3] ),
    .A3(_125_),
    .A4(_136_),
    .B1(_137_),
    .Y(_138_));
 sky130_fd_sc_hd__and2_1 _327_ (.A(_094_),
    .B(_138_),
    .X(_014_));
 sky130_fd_sc_hd__and4_1 _328_ (.A(\uart1.counter[4] ),
    .B(\uart1.counter[5] ),
    .C(\uart1.counter[6] ),
    .D(\uart1.counter[7] ),
    .X(_139_));
 sky130_fd_sc_hd__a41oi_1 _329_ (.A1(\uart1.counter[2] ),
    .A2(\uart1.counter[3] ),
    .A3(_125_),
    .A4(_136_),
    .B1(\uart1.counter[7] ),
    .Y(_140_));
 sky130_fd_sc_hd__a31oi_1 _330_ (.A1(\uart1.counter[3] ),
    .A2(_128_),
    .A3(_139_),
    .B1(_140_),
    .Y(_141_));
 sky130_fd_sc_hd__and2_1 _331_ (.A(_094_),
    .B(_141_),
    .X(_015_));
 sky130_fd_sc_hd__and4_1 _332_ (.A(\uart1.counter[3] ),
    .B(\uart1.counter[8] ),
    .C(_128_),
    .D(_139_),
    .X(_142_));
 sky130_fd_sc_hd__a31oi_1 _333_ (.A1(\uart1.counter[3] ),
    .A2(_128_),
    .A3(_139_),
    .B1(\uart1.counter[8] ),
    .Y(_143_));
 sky130_fd_sc_hd__nor2_1 _334_ (.A(_142_),
    .B(_143_),
    .Y(_144_));
 sky130_fd_sc_hd__and2_1 _335_ (.A(_094_),
    .B(_144_),
    .X(_016_));
 sky130_fd_sc_hd__xnor2_1 _336_ (.A(\uart1.counter[9] ),
    .B(_142_),
    .Y(_145_));
 sky130_fd_sc_hd__nor2_1 _337_ (.A(_145_),
    .B(_102_),
    .Y(_017_));
 sky130_fd_sc_hd__a31o_1 _338_ (.A1(\uart3.state[0] ),
    .A2(\uart3.state[1] ),
    .A3(_023_),
    .B1(net28),
    .X(_018_));
 sky130_fd_sc_hd__a31o_1 _339_ (.A1(\uart2.state[1] ),
    .A2(\uart2.state[0] ),
    .A3(_164_),
    .B1(net29),
    .X(_019_));
 sky130_fd_sc_hd__nor3_1 _340_ (.A(\uart3.state[0] ),
    .B(\uart3.state[1] ),
    .C(_036_),
    .Y(_146_));
 sky130_fd_sc_hd__or4_1 _341_ (.A(\uart3.state[0] ),
    .B(\uart3.state[1] ),
    .C(net1),
    .D(_036_),
    .X(_147_));
 sky130_fd_sc_hd__o211a_1 _342_ (.A1(net21),
    .A2(_146_),
    .B1(_147_),
    .C1(_107_),
    .X(_020_));
 sky130_fd_sc_hd__and4bb_1 _343_ (.A_N(\uart3.state[3] ),
    .B_N(\uart3.state[1] ),
    .C(\uart3.state[0] ),
    .D(\uart3.state[2] ),
    .X(_148_));
 sky130_fd_sc_hd__or4b_1 _344_ (.A(\uart3.state[1] ),
    .B(net1),
    .C(_036_),
    .D_N(\uart3.state[0] ),
    .X(_149_));
 sky130_fd_sc_hd__o211a_1 _345_ (.A1(net22),
    .A2(_148_),
    .B1(_149_),
    .C1(_107_),
    .X(_021_));
 sky130_fd_sc_hd__dfrtp_4 _346_ (.CLK(net31),
    .D(\uart3.next[0] ),
    .RESET_B(net11),
    .Q(\uart3.state[0] ));
 sky130_fd_sc_hd__dfrtp_4 _347_ (.CLK(net31),
    .D(\uart3.next[1] ),
    .RESET_B(net11),
    .Q(\uart3.state[1] ));
 sky130_fd_sc_hd__dfrtp_4 _348_ (.CLK(net31),
    .D(\uart3.next[2] ),
    .RESET_B(net11),
    .Q(\uart3.state[2] ));
 sky130_fd_sc_hd__dfrtp_4 _349_ (.CLK(net31),
    .D(\uart3.next[3] ),
    .RESET_B(net11),
    .Q(\uart3.state[3] ));
 sky130_fd_sc_hd__dfrtp_4 _350_ (.CLK(clk_CPU),
    .D(_000_),
    .RESET_B(net11),
    .Q(net31));
 sky130_fd_sc_hd__dfrtp_1 _351_ (.CLK(clk_CPU),
    .D(_001_),
    .RESET_B(net11),
    .Q(net26));
 sky130_fd_sc_hd__dfrtp_1 _352_ (.CLK(clk_CPU),
    .D(_002_),
    .RESET_B(net11),
    .Q(net25));
 sky130_fd_sc_hd__dfrtp_1 _353_ (.CLK(clk_CPU),
    .D(_003_),
    .RESET_B(net11),
    .Q(net24));
 sky130_fd_sc_hd__dfrtp_1 _354_ (.CLK(clk_CPU),
    .D(_004_),
    .RESET_B(net11),
    .Q(net23));
 sky130_fd_sc_hd__dfstp_1 _355_ (.CLK(clk_CPU),
    .D(_005_),
    .SET_B(net11),
    .Q(net19));
 sky130_fd_sc_hd__dfrtp_1 _356_ (.CLK(clk_CPU),
    .D(_006_),
    .RESET_B(net11),
    .Q(net20));
 sky130_fd_sc_hd__dfrtp_4 _357_ (.CLK(net31),
    .D(\uart2.next[0] ),
    .RESET_B(net11),
    .Q(\uart2.state[0] ));
 sky130_fd_sc_hd__dfrtp_4 _358_ (.CLK(net31),
    .D(\uart2.next[1] ),
    .RESET_B(net11),
    .Q(\uart2.state[1] ));
 sky130_fd_sc_hd__dfrtp_1 _359_ (.CLK(net31),
    .D(\uart2.next[2] ),
    .RESET_B(net11),
    .Q(\uart2.state[2] ));
 sky130_fd_sc_hd__dfrtp_1 _360_ (.CLK(net31),
    .D(\uart2.next[3] ),
    .RESET_B(net11),
    .Q(\uart2.state[3] ));
 sky130_fd_sc_hd__dfstp_1 _361_ (.CLK(net31),
    .D(_007_),
    .SET_B(net11),
    .Q(net27));
 sky130_fd_sc_hd__dfrtp_1 _362_ (.CLK(clk_CPU),
    .D(_008_),
    .RESET_B(net11),
    .Q(\uart1.counter[0] ));
 sky130_fd_sc_hd__dfrtp_2 _363_ (.CLK(clk_CPU),
    .D(_009_),
    .RESET_B(net11),
    .Q(\uart1.counter[1] ));
 sky130_fd_sc_hd__dfrtp_1 _364_ (.CLK(clk_CPU),
    .D(_010_),
    .RESET_B(net11),
    .Q(\uart1.counter[2] ));
 sky130_fd_sc_hd__dfrtp_4 _365_ (.CLK(clk_CPU),
    .D(_011_),
    .RESET_B(net11),
    .Q(\uart1.counter[3] ));
 sky130_fd_sc_hd__dfrtp_1 _366_ (.CLK(clk_CPU),
    .D(_012_),
    .RESET_B(net11),
    .Q(\uart1.counter[4] ));
 sky130_fd_sc_hd__dfrtp_2 _367_ (.CLK(clk_CPU),
    .D(_013_),
    .RESET_B(net11),
    .Q(\uart1.counter[5] ));
 sky130_fd_sc_hd__dfrtp_2 _368_ (.CLK(clk_CPU),
    .D(_014_),
    .RESET_B(net11),
    .Q(\uart1.counter[6] ));
 sky130_fd_sc_hd__dfrtp_2 _369_ (.CLK(clk_CPU),
    .D(_015_),
    .RESET_B(net11),
    .Q(\uart1.counter[7] ));
 sky130_fd_sc_hd__dfrtp_2 _370_ (.CLK(clk_CPU),
    .D(_016_),
    .RESET_B(net11),
    .Q(\uart1.counter[8] ));
 sky130_fd_sc_hd__dfrtp_1 _371_ (.CLK(clk_CPU),
    .D(_017_),
    .RESET_B(net11),
    .Q(\uart1.counter[9] ));
 sky130_fd_sc_hd__dfrtp_1 _372_ (.CLK(clk_CPU),
    .D(_018_),
    .RESET_B(net11),
    .Q(net28));
 sky130_fd_sc_hd__dfrtp_1 _373_ (.CLK(net31),
    .D(_019_),
    .RESET_B(net11),
    .Q(net29));
 sky130_fd_sc_hd__dfrtp_1 _374_ (.CLK(clk_CPU),
    .D(_020_),
    .RESET_B(net11),
    .Q(net21));
 sky130_fd_sc_hd__dfrtp_1 _375_ (.CLK(clk_CPU),
    .D(_021_),
    .RESET_B(net11),
    .Q(net22));
 sky130_fd_sc_hd__buf_2 _376_ (.A(net32),
    .X(DATA_OUT_Rx[8]));
 sky130_fd_sc_hd__buf_2 _377_ (.A(net33),
    .X(DATA_OUT_Rx[9]));
 sky130_fd_sc_hd__clkbuf_1 _378_ (.A(net28),
    .X(net30));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_125 ();
 sky130_fd_sc_hd__buf_2 input1 (.A(DATA_IN_Rx),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(DATA_IN_Tx[0]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(DATA_IN_Tx[1]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(DATA_IN_Tx[2]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(DATA_IN_Tx[3]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(DATA_IN_Tx[4]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(DATA_IN_Tx[5]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(DATA_IN_Tx[6]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(DATA_IN_Tx[7]),
    .X(net9));
 sky130_fd_sc_hd__buf_1 input10 (.A(EN),
    .X(net10));
 sky130_fd_sc_hd__buf_12 input11 (.A(RST),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(UART_BITS),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(UART_PARITY),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(UART_WRITE),
    .X(net14));
 sky130_fd_sc_hd__buf_4 input15 (.A(bitrate[0]),
    .X(net15));
 sky130_fd_sc_hd__buf_4 input16 (.A(bitrate[1]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_4 input17 (.A(bitrate[2]),
    .X(net17));
 sky130_fd_sc_hd__buf_2 input18 (.A(bitrate[3]),
    .X(net18));
 sky130_fd_sc_hd__buf_1 output19 (.A(net19),
    .X(DATA_OUT_Rx[0]));
 sky130_fd_sc_hd__buf_1 output20 (.A(net20),
    .X(DATA_OUT_Rx[1]));
 sky130_fd_sc_hd__buf_1 output21 (.A(net21),
    .X(DATA_OUT_Rx[2]));
 sky130_fd_sc_hd__buf_1 output22 (.A(net22),
    .X(DATA_OUT_Rx[3]));
 sky130_fd_sc_hd__buf_1 output23 (.A(net23),
    .X(DATA_OUT_Rx[4]));
 sky130_fd_sc_hd__buf_1 output24 (.A(net24),
    .X(DATA_OUT_Rx[5]));
 sky130_fd_sc_hd__buf_1 output25 (.A(net25),
    .X(DATA_OUT_Rx[6]));
 sky130_fd_sc_hd__buf_1 output26 (.A(net26),
    .X(DATA_OUT_Rx[7]));
 sky130_fd_sc_hd__buf_1 output27 (.A(net27),
    .X(DATA_OUT_Tx));
 sky130_fd_sc_hd__buf_1 output28 (.A(net28),
    .X(IRQ_Rx));
 sky130_fd_sc_hd__buf_1 output29 (.A(net29),
    .X(IRQ_Tx));
 sky130_fd_sc_hd__buf_1 output30 (.A(net30),
    .X(UART_AVAIL));
 sky130_fd_sc_hd__buf_1 output31 (.A(net31),
    .X(uart_clock));
 sky130_fd_sc_hd__conb_1 _376__32 (.LO(net32));
 sky130_fd_sc_hd__conb_1 _377__33 (.LO(net33));
endmodule
