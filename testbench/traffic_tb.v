`timescale 1ns / 1ps 
 
 
module traffic_tb; 
 
wire    [4:0] i_NS_count    ; 
wire    [3:0] i_EW_count    ; 
wire    [1:0] yellow_count  ; 
reg           CLK           ; 
 
 
reg         NS_vehicle_detect; 
reg         EW_vehicle_detect; 
 
 
wire        NS_red          ;    
wire        NS_yellow       ; 
wire        NS_green        ; 
wire        EW_red          ; 
wire        EW_yellow       ; 
wire        EW_green        ; 
 
 
initial begin 
 
    CLK                     =1'b0       ; 
    NS_vehicle_detect       =1'b1       ; 
    EW_vehicle_detect       =1'b1       ; 
     
    $display("      NS      |   EW  "); 
    $display(" R    Y   G   R   Y  G"); 
    $monitor("%h  %h  %h  %h  %h  
%h",NS_red,NS_yellow,NS_green,EW_red,EW_yellow,EW_green); 
     
    #1000 $finish; 
 
end 
 
 
always 
    #5 CLK      =~CLK       ; 
        NS_vehicle_detect = ~NS_vehicle_detect; 
    if($time % 15 ==0) 
EW_vehicle_detect = ~EW_vehicle_detect; 
traffic_light_ctrl CORE (  
.i_NS_count         (i_NS_count),                
.i_EW_count         (i_EW_count),                    
.yellow_count       (yellow_count),                 
.NS_vehicle_detect  (NS_vehicle_detect),                 
.EW_vehicle_detect  (EW_vehicle_detect),  
.NS_red             (NS_red),    
.NS_yellow          (NS_yellow), 
.NS_green           (NS_green),  
.EW_red             
(EW_red),    
.EW_yellow          (EW_yellow), 
.EW_green           (EW_green)   
); 
NS_Count i_NS_count_0 ( 
.i_clk              (CLK), 
.o_count            (i_NS_count) 
); 
EW_Count i_EW_count_0 ( 
.i_clk              (CLK), 
.o_count            (i_EW_count) 
); 
yellow_count i_yellow_count_0 ( 
.i_clk              (CLK), 
.o_count            (yellow_count) 
); 
endmodule
