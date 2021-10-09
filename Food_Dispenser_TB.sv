// ELEC402_PRJ1_SystemVerilog_FSM_Project
// Project Name: Food Food_Dispenser
// Name: Xingwei Su
// File: Food_Dispenser_TB
// Description: Testbench for module Food_Dispenser_FSM
// This program will test for reset, initialization, food refill, playground, 
// auto feed functions for the design. Using .do file on ModelSim simulation 
// for more detail.

`timescale 1ns/10ps

module Food_Dispenser_TB();

    //Testbench simulate inputs
    logic           reset, clk, timesup, refill_detector, cap_detector, play_function_pedal, initialize_flag, newday;
    logic [6:0]     food_weight, set_food_weight;

    //Testbench simulate outputs
    logic           food_gate, warning, play_function_flag, play_function_fail_flag;


    food_dispenser_fsm DUT(
        .reset(reset),
        .clk(clk),
        .timesup(timesup),
        .food_weight(food_weight),
        .set_food_weight(set_food_weight),
        .refill_detector(refill_detector),
        .cap_detector(cap_detector),
        .play_function_pedal(play_function_pedal),
        .initialize_flag(initialize_flag),
        .newday(newday),

        .food_gate(food_gate),
        .warning(warning),
        .play_function_flag(play_function_flag),
        .play_function_fail_flag(play_function_fail_flag) 
    );

    //Create a global fast clock 10Mhz
    initial forever begin
        clk = 1;
        #50;
        clk = 0;
        #50;
    end

    initial begin

        timesup = 0;
        refill_detector = 0;
        cap_detector = 0;
        play_function_pedal = 0;
        initialize_flag = 0;
        food_weight = 0;
        set_food_weight = 7'd0;
        newday = 0;

        //reset stage
        reset = 1;
        #200;
        reset = 0;
        #200;


        //initialization stage complete
        set_food_weight = 7'd35;
        initialize_flag = 1'b1;
        #200;
        #200;

        //idle stage

        //refill needed
        refill_detector = 1'b1;
        #200;
        cap_detector = 1'b1;
        #200;
        refill_detector = 1'b0;
        #200;
        cap_detector = 1'b0;
        #200;
        #200;

        //Play_function Test
        play_function_pedal = 1'b1;
        #200;
        #200;
        play_function_pedal = 1'b0;
        #200;
        food_weight = 7'd1;
        #200;
        #200;
        food_weight = 7'd0;
        #200;
        #200;
        //test for fail flag
        play_function_pedal = 1'b1;
        food_weight = 7'd1;
        #1800;
        #1800;
        #1800;
        #1800;
        #1800;
        #1800;
        //test for new day (refreshing counter)
        newday = 1'b1;
        #200;
        newday = 1'b0;
        #600;
        food_weight = 7'd0;
        play_function_pedal = 1'b0;
        #200;





        //timesup & Warning test
        timesup = 1'b1;
        #200;
        timesup = 1'b0;
        #200;
        food_weight = 7'd12;
        #100;
        food_weight = 7'd35;
        #200;
        #200;
        food_weight = 7'd12;
        #200;
        timesup = 1'b1;
        #200;
        timesup = 1'b0;
        #200;
        food_weight = 7'd35;
        #200;
        food_weight = 7'd0;
        #200;
        timesup = 1'b1;
        #200;
        timesup = 1'b0;
        #200;
        food_weight = 7'd35;
        #200;



    end


endmodule
