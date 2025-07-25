module tt_um_FFT_engine (
    input  wire [7:0] ui_in,
    output logic [7:0] uo_out,
    input  wire [7:0] uio_in,
    output logic [7:0] uio_out,
    output logic [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);
    // System signals
    wire rst = ~rst_n;
    
    // Control signals
    wire load_pulse, output_pulse;
    wire [1:0] addr;
    
    // Individual sample storage
    logic signed [7:0] sample0_real, sample0_imag;
    logic signed [7:0] sample1_real, sample1_imag;
    logic signed [7:0] sample2_real, sample2_imag;
    logic signed [7:0] sample3_real, sample3_imag;
    
    // Individual FFT outputs
    logic signed [7:0] fft0_real, fft0_imag;
    logic signed [7:0] fft1_real, fft1_imag;
    logic signed [7:0] fft2_real, fft2_imag;
    logic signed [7:0] fft3_real, fft3_imag;
    
    // State tracking
    logic processing, done;
    logic processing_dly;
    logic [1:0] output_counter;

    // Pipeline output to avoid hold violations
    logic [7:0] uio_out_next;
    
    // Module instantiations
    io_ctrl io_inst (
        .clk(clk), .rst(rst), .ena(ena),
        .ui_in0(ui_in[0]), .ui_in1(ui_in[1]),
        .load_pulse(load_pulse),
        .output_pulse(output_pulse),
        .addr(addr)
    );
    
    memory_ctrl mem_inst (
        .clk(clk), .rst(rst), .ena(ena),
        .load_pulse(load_pulse),
        .addr(addr),
        .data_in(uio_in),
        .real0_out(sample0_real), .imag0_out(sample0_imag),
        .real1_out(sample1_real), .imag1_out(sample1_imag),
        .real2_out(sample2_real), .imag2_out(sample2_imag),
        .real3_out(sample3_real), .imag3_out(sample3_imag)
    );
    
    // Connect FFT engine using individual signals
    fft_engine fft_inst (
        .clk(clk), .rst(rst),
        .in0_real(sample0_real), .in0_imag(sample0_imag),
        .in1_real(sample1_real), .in1_imag(sample1_imag),
        .in2_real(sample2_real), .in2_imag(sample2_imag),
        .in3_real(sample3_real), .in3_imag(sample3_imag),
        .out0_real(fft0_real), .out0_imag(fft0_imag),
        .out1_real(fft1_real), .out1_imag(fft1_imag),
        .out2_real(fft2_real), .out2_imag(fft2_imag),
        .out3_real(fft3_real), .out3_imag(fft3_imag)
    );
    
    display_ctrl disp_inst (
        .sample_counter(addr),
        .output_counter(output_counter),
        .processing(processing), .done(done),
        .seg_out(uo_out)
    );

    assign uio_oe = (output_pulse && done) ? 8'hFF : 8'h00;
    
    // Output control
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            processing <= '0;
            done <= '0;
            output_counter <= '0;
            processing_dly <= '0;
            uio_out = 8'h00;
        end else if (ena) begin
            processing_dly <= processing;
            if (load_pulse && addr == 2'd3) 
                processing <= '1;
            else if (processing) 
                processing <= '0;
            
            if (processing_dly && !processing)
                done <= '1;
            else if (output_pulse && output_counter == 2'd3)
                done <= '0;
            
            if (output_pulse && done) begin
                output_counter <= (output_counter == 2'd3) ? '0 : output_counter + 1;
            end

            uio_out <= uio_out_next;
        end
    end

    always_comb begin
        case(output_counter)
            2'd0:    uio_out_next = {fft0_real[7:4], fft0_imag[7:4]};
            2'd1:    uio_out_next = {fft1_real[7:4], fft1_imag[7:4]};
            2'd2:    uio_out_next = {fft2_real[7:4], fft2_imag[7:4]};
            2'd3:    uio_out_next = {fft3_real[7:4], fft3_imag[7:4]};
            default: uio_out_next = 8'h00;
        endcase
    end
endmodule