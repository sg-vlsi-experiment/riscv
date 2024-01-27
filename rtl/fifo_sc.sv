///////////////////////////////////////////////////////////////////////////////
// File       : fifo_sc.sv
// Ver        : 0.1
// Date       : 06.01.2024
///////////////////////////////////////////////////////////////////////////////
//
// Description: Single clock fifo using registers
//
///////////////////////////////////////////////////////////////////////////////
//
// Authors    : Yunhai Qiao (dellysunny@yahoo.com)
//
///////////////////////////////////////////////////////////////////////////////


module fifo_sc #(
  parameter P_FALL_THROUGH = 1'b0,
  parameter P_DATA_WIDTH   = 32,  // Width of each data element
  parameter P_DEPTH        = 8    // Depth of the FIFO
)(
  input  logic                    i_rstn,            // Reset
  input  logic                    i_clk,             // Clock
  input  logic                    i_wr_en,           // Write enable
  input  logic                    i_rd_en,           // Read enable
  input  logic [P_DATA_WIDTH-1:0] i_data_in,         // Data input
  output logic [P_DATA_WIDTH-1:0] o_data_out,        // Data output
  output logic                    o_full,            // Full flag
  output logic                    o_empty            // Empty flag
);

  // Parameters
  localparam P_ADDR_DEPTH  = (P_DEPTH > 1)? $clog2(P_DEPTH) : 1
  localparam P_FIFO_DEPTH  = 1 << P_ADDR_DEPTH; // P_FIFO_DEPTH = (DEPTH > 0) ? DEPTH : 1;

  // Signals
  logic [P_DATA_WIDTH-1:0] s_fifo[P_FIFO_DEPTH-1:0];
  logic [P_ADDR_DEPTH-1:0] s_rd_ptr;
  logic [P_ADDR_DEPTH-1:0] s_wr_ptr;
  logic [P_ADDR_DEPTH-1:0] s_rd_ptr_n; // next read pointer
  logic [P_ADDR_DEPTH-1:0] s_wr_ptr_n; // next write pointer
  
  logic                    s_full;
  logic                    s_empty;
  logic [P_DATA_WIDTH-1:0] s_data_out;


  // write pointer
  always_ff @(posedge i_clk or posedge i_rstn) begin
    if (~i_rstn) begin
      s_wr_ptr <= 0;
    end 
    else begin
      // Write to FIFO
      if (i_wr_en) begin
        s_wr_ptr <= s_wr_ptr + 1;
        if (s_wr_ptr == P_FIFO_DEPTH-1)
          s_wr_ptr <= 0;
      end
    end
  end

  // read pointer 
  always_ff @(posedge i_clk or posedge i_rstn) begin
    if (~i_rstn) begin
      s_rd_ptr <= 0;
    end 
    else begin
      // Read from FIFO
      if (i_rd_en) begin
        s_rd_ptr <= s_rd_ptr + 1;
        if (s_rd_ptr == P_FIFO_DEPTH-1)
          s_rd_ptr <= 0;
      end
    end
  end



  always_ff @(posedge i_clk or posedge i_rstn) begin
    if (~i_rstn) begin
      s_rd_cnt <= 0;
      s_wr_cnt <= 0;
    end 
    else begin
      // Write to FIFO
      if (i_wr_en && !s_full) begin
        fifo[s_wr_cnt] <= data_in;

        s_wr_cnt <= s_wr_cnt + 1;
        if (s_wr_cnt == P_FIFO_DEPTH) 
          s_wr_cnt <= 0;
      end

      // Read from FIFO
      if (i_rd_en || (s_empty && !s_full)) begin
        s_data_out <= fifo[s_rd_cnt];

        s_rd_cnt <= s_rd_cnt + 1;
        if (s_rd_cnt == P_FIFO_DEPTH) 
          s_rd_cnt <= 0;
      end

      // Update full and empty flags
      s_full <= (rear == front) ? 1 : 0;
      s_empty <= (front == rear) ? 1 : 0;
    end
  end


  assign o_data_out = s_data_out;
  assign o_full     = s_full;
  assign o_empty    = s_empty;

endmodule
