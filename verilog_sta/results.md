Clock clk
   0.48 source latency _844_/CLK ^
  -0.49 target latency _779_/CLK ^
  -0.10 clock uncertainty
   0.00 CRPR
--------------
  -0.11 hold skew

                                                          Not
Check type                        Total    Annotated   Annotated
----------------------------------------------------------------
cell hold arcs                       90           0          90
----------------------------------------------------------------
                                     90           0          90
Startpoint: _788_ (rising edge-triggered flip-flop clocked by clk)
Endpoint: _846_ (removal check against rising-edge clock clk)
Path Group: asynchronous
Path Type: min
Corner: ff

  Delay    Time   Description
---------------------------------------------------------
   0.00    0.00   clock clk (rise edge)
   0.27    0.27   clock network delay (propagated)
   0.00    0.27 ^ _788_/CLK (sky130_fd_sc_hd__dfstp_1)
   0.27    0.54 v _788_/Q (sky130_fd_sc_hd__dfstp_1)
   0.55    1.10 v hold1/X (sky130_fd_sc_hd__dlygate4sd3_1)
   0.18    1.28 v fanout18/X (sky130_fd_sc_hd__buf_2)
   0.05    1.34 ^ _756_/Y (sky130_fd_sc_hd__inv_2)
   0.00    1.34 ^ _846_/RESET_B (sky130_fd_sc_hd__dfrtp_1)
           1.34   data arrival time

   0.00    0.00   clock clk (rise edge)
   0.27    0.27   clock network delay (propagated)
   0.10    0.37   clock uncertainty
   0.00    0.37   clock reconvergence pessimism
           0.37 ^ _846_/CLK (sky130_fd_sc_hd__dfrtp_1)
   0.24    0.61   library removal time
           0.61   data required time
---------------------------------------------------------
           0.61   data required time
          -1.34   data arrival time
---------------------------------------------------------
           0.72   slack (MET)


Startpoint: _851_ (rising edge-triggered flip-flop clocked by clk)
Endpoint: _782_ (rising edge-triggered flip-flop clocked by clk)
Path Group: clk
Path Type: min
Corner: ff

  Delay    Time   Description
---------------------------------------------------------
   0.00    0.00   clock clk (rise edge)
   0.27    0.27   clock network delay (propagated)
   0.00    0.27 ^ _851_/CLK (sky130_fd_sc_hd__dfrtp_1)
   0.24    0.51 ^ _851_/Q (sky130_fd_sc_hd__dfrtp_1)
   0.08    0.59 ^ _444_/X (sky130_fd_sc_hd__o31a_1)
   0.08    0.67 ^ _445_/X (sky130_fd_sc_hd__a22o_1)
   0.00    0.67 ^ _782_/D (sky130_fd_sc_hd__dfrtp_1)
           0.67   data arrival time

   0.00    0.00   clock clk (rise edge)
   0.27    0.27   clock network delay (propagated)
   0.10    0.37   clock uncertainty
   0.00    0.37   clock reconvergence pessimism
           0.37 ^ _782_/CLK (sky130_fd_sc_hd__dfrtp_1)
  -0.02    0.35   library hold time
           0.35   data required time
---------------------------------------------------------
           0.35   data required time
          -0.67   data arrival time
---------------------------------------------------------
           0.32   slack (MET)


Startpoint: rst_n (input port clocked by clk)
Endpoint: _787_ (recovery check against rising-edge clock clk)
Path Group: asynchronous
Path Type: max
Corner: ss

  Delay    Time   Description
---------------------------------------------------------
   0.00    0.00   clock clk (rise edge)
   0.00    0.00   clock network delay (propagated)
   0.50    0.50 ^ input external delay
   0.00    0.50 ^ rst_n (in)
   0.10    0.60 ^ rst_delay.buf1/X (sky130_fd_sc_hd__clkbuf_1)
   0.28    0.87 ^ rst_delay.buf2/X (sky130_fd_sc_hd__clkbuf_1)
   0.35    1.23 ^ rst_delay.buf3/X (sky130_fd_sc_hd__clkbuf_1)
   0.21    1.44 ^ rst_delay.buf4/X (sky130_fd_sc_hd__clkbuf_1)
   0.17    1.61 ^ rst_delay.buf5/X (sky130_fd_sc_hd__clkbuf_1)
   0.17    1.79 ^ rst_delay.buf6/X (sky130_fd_sc_hd__clkbuf_1)
   0.46    2.24 ^ rst_delay.buf7/X (sky130_fd_sc_hd__buf_1)
   0.26    2.50 ^ rst_delay.buf8/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    2.63 ^ rst_delay.buf9/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    2.76 ^ rst_delay.buf10/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    2.88 ^ rst_delay.buf11/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    3.00 ^ rst_delay.buf12/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    3.13 ^ rst_delay.buf13/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    3.26 ^ rst_delay.buf14/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    3.39 ^ rst_delay.buf15/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    3.52 ^ rst_delay.buf16/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    3.64 ^ rst_delay.buf17/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    3.77 ^ rst_delay.buf18/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    3.90 ^ rst_delay.buf19/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    4.03 ^ rst_delay.buf20/X (sky130_fd_sc_hd__clkbuf_1)
   0.14    4.16 ^ rst_delay.buf21/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    4.29 ^ rst_delay.buf22/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    4.42 ^ rst_delay.buf23/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    4.55 ^ rst_delay.buf24/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    4.68 ^ rst_delay.buf25/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    4.80 ^ rst_delay.buf26/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    4.93 ^ rst_delay.buf27/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    5.06 ^ rst_delay.buf28/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    5.18 ^ rst_delay.buf29/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    5.31 ^ rst_delay.buf30/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    5.43 ^ rst_delay.buf31/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    5.56 ^ rst_delay.buf32/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    5.68 ^ rst_delay.buf33/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    5.81 ^ rst_delay.buf34/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    5.93 ^ rst_delay.buf35/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    6.05 ^ rst_delay.buf36/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    6.18 ^ rst_delay.buf37/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    6.30 ^ rst_delay.buf38/X (sky130_fd_sc_hd__clkbuf_1)
   0.13    6.43 ^ rst_delay.buf39/X (sky130_fd_sc_hd__clkbuf_1)
   0.20    6.63 ^ rst_delay.buf40/X (sky130_fd_sc_hd__buf_1)
   0.00    6.63 ^ _787_/SET_B (sky130_fd_sc_hd__dfstp_1)
           6.63   data arrival time

  10.00   10.00   clock clk (rise edge)
   0.49   10.49   clock network delay (propagated)
  -0.10   10.39   clock uncertainty
   0.00   10.39   clock reconvergence pessimism
          10.39 ^ _787_/CLK (sky130_fd_sc_hd__dfstp_1)
   0.20   10.59   library recovery time
          10.59   data required time
---------------------------------------------------------
          10.59   data required time
          -6.63   data arrival time
---------------------------------------------------------
           3.96   slack (MET)


Startpoint: _817_ (rising edge-triggered flip-flop clocked by clk)
Endpoint: _836_ (rising edge-triggered flip-flop clocked by clk)
Path Group: clk
Path Type: max
Corner: ss

  Delay    Time   Description
---------------------------------------------------------
   0.00    0.00   clock clk (rise edge)
   0.49    0.49   clock network delay (propagated)
   0.00    0.49 ^ _817_/CLK (sky130_fd_sc_hd__dfrtp_4)
   0.89    1.38 v _817_/Q (sky130_fd_sc_hd__dfrtp_4)
   0.92    2.30 v _532_/X (sky130_fd_sc_hd__or3_2)
   0.35    2.64 v _534_/X (sky130_fd_sc_hd__and3_1)
   0.62    3.26 v _536_/X (sky130_fd_sc_hd__or2_2)
   0.49    3.75 ^ _539_/Y (sky130_fd_sc_hd__xnor2_2)
   0.47    4.22 ^ _542_/X (sky130_fd_sc_hd__xor2_2)
   0.19    4.41 v _544_/Y (sky130_fd_sc_hd__o21ai_1)
   0.29    4.70 ^ _554_/Y (sky130_fd_sc_hd__xnor2_1)
   0.00    4.70 ^ _836_/D (sky130_fd_sc_hd__dfrtp_1)
           4.70   data arrival time

  10.00   10.00   clock clk (rise edge)
   0.48   10.48   clock network delay (propagated)
  -0.10   10.38   clock uncertainty
   0.00   10.38   clock reconvergence pessimism
          10.38 ^ _836_/CLK (sky130_fd_sc_hd__dfrtp_1)
  -0.15   10.23   library setup time
          10.23   data required time
---------------------------------------------------------
          10.23   data required time
          -4.70   data arrival time
---------------------------------------------------------
           5.53   slack (MET)


Startpoint: rst_n (input port clocked by clk)
Endpoint: _787_ (recovery check against rising-edge clock clk)
Path Group: asynchronous
Path Type: max
Corner: tt

  Delay    Time   Description
---------------------------------------------------------
   0.00    0.00   clock clk (rise edge)
   0.00    0.00   clock network delay (propagated)
   0.50    0.50 ^ input external delay
   0.00    0.50 ^ rst_n (in)
   0.06    0.56 ^ rst_delay.buf1/X (sky130_fd_sc_hd__clkbuf_1)
   0.17    0.73 ^ rst_delay.buf2/X (sky130_fd_sc_hd__clkbuf_1)
   0.20    0.93 ^ rst_delay.buf3/X (sky130_fd_sc_hd__clkbuf_1)
   0.11    1.04 ^ rst_delay.buf4/X (sky130_fd_sc_hd__clkbuf_1)
   0.10    1.14 ^ rst_delay.buf5/X (sky130_fd_sc_hd__clkbuf_1)
   0.10    1.24 ^ rst_delay.buf6/X (sky130_fd_sc_hd__clkbuf_1)
   0.27    1.51 ^ rst_delay.buf7/X (sky130_fd_sc_hd__buf_1)
   0.13    1.64 ^ rst_delay.buf8/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    1.72 ^ rst_delay.buf9/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    1.80 ^ rst_delay.buf10/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    1.87 ^ rst_delay.buf11/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    1.95 ^ rst_delay.buf12/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.03 ^ rst_delay.buf13/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.10 ^ rst_delay.buf14/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.18 ^ rst_delay.buf15/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.26 ^ rst_delay.buf16/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.33 ^ rst_delay.buf17/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.41 ^ rst_delay.buf18/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.49 ^ rst_delay.buf19/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.57 ^ rst_delay.buf20/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.65 ^ rst_delay.buf21/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.73 ^ rst_delay.buf22/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.80 ^ rst_delay.buf23/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.89 ^ rst_delay.buf24/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    2.96 ^ rst_delay.buf25/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    3.04 ^ rst_delay.buf26/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    3.12 ^ rst_delay.buf27/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    3.20 ^ rst_delay.buf28/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    3.27 ^ rst_delay.buf29/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    3.35 ^ rst_delay.buf30/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    3.42 ^ rst_delay.buf31/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    3.50 ^ rst_delay.buf32/X (sky130_fd_sc_hd__clkbuf_1)
   0.07    3.57 ^ rst_delay.buf33/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    3.65 ^ rst_delay.buf34/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    3.73 ^ rst_delay.buf35/X (sky130_fd_sc_hd__clkbuf_1)
   0.07    3.80 ^ rst_delay.buf36/X (sky130_fd_sc_hd__clkbuf_1)
   0.07    3.88 ^ rst_delay.buf37/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    3.95 ^ rst_delay.buf38/X (sky130_fd_sc_hd__clkbuf_1)
   0.08    4.03 ^ rst_delay.buf39/X (sky130_fd_sc_hd__clkbuf_1)
   0.12    4.15 ^ rst_delay.buf40/X (sky130_fd_sc_hd__buf_1)
   0.00    4.15 ^ _787_/SET_B (sky130_fd_sc_hd__dfstp_1)
           4.15   data arrival time

  10.00   10.00   clock clk (rise edge)
   0.33   10.33   clock network delay (propagated)
  -0.10   10.23   clock uncertainty
   0.00   10.23   clock reconvergence pessimism
          10.23 ^ _787_/CLK (sky130_fd_sc_hd__dfstp_1)
   0.14   10.37   library recovery time
          10.37   data required time
---------------------------------------------------------
          10.37   data required time
          -4.15   data arrival time
---------------------------------------------------------
           6.22   slack (MET)


Startpoint: _817_ (rising edge-triggered flip-flop clocked by clk)
Endpoint: _840_ (rising edge-triggered flip-flop clocked by clk)
Path Group: clk
Path Type: max
Corner: tt

  Delay    Time   Description
---------------------------------------------------------
   0.00    0.00   clock clk (rise edge)
   0.33    0.33   clock network delay (propagated)
   0.00    0.33 ^ _817_/CLK (sky130_fd_sc_hd__dfrtp_4)
   0.56    0.89 v _817_/Q (sky130_fd_sc_hd__dfrtp_4)
   0.50    1.39 v _532_/X (sky130_fd_sc_hd__or3_2)
   0.21    1.60 v _534_/X (sky130_fd_sc_hd__and3_1)
   0.36    1.96 v _536_/X (sky130_fd_sc_hd__or2_2)
   0.30    2.26 ^ _539_/Y (sky130_fd_sc_hd__xnor2_2)
   0.26    2.52 ^ _542_/X (sky130_fd_sc_hd__xor2_2)
   0.12    2.64 v _617_/Y (sky130_fd_sc_hd__a21oi_1)
   0.14    2.78 v _618_/Y (sky130_fd_sc_hd__xnor2_1)
   0.00    2.78 v _840_/D (sky130_fd_sc_hd__dfrtp_1)
           2.78   data arrival time

  10.00   10.00   clock clk (rise edge)
   0.33   10.33   clock network delay (propagated)
  -0.10   10.23   clock uncertainty
   0.00   10.23   clock reconvergence pessimism
          10.23 ^ _840_/CLK (sky130_fd_sc_hd__dfrtp_1)
  -0.12   10.11   library setup time
          10.11   data required time
---------------------------------------------------------
          10.11   data required time
          -2.78   data arrival time
---------------------------------------------------------
           7.33   slack (MET)