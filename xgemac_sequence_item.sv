`ifndef RESET_SEQ_ITEM_INCLUDED_
`define RESET_SEQ_ITEM_INCLUDED_
//--------------------------------------------------------------------------------------------
// Class: in_sequence_item
// This class holds the data items required to drive the stimulus to dut
//--------------------------------------------------------------------------------------------
class in_sequence_item extends uvm_sequence_item;
  
  //factory registration
  `uvm_object_utils(in_sequence_item)
  
  //class constructor
  function axi_master_transaction::new(string name = "in_sequence_item");
    super.new(name);
  endfunction : new

  //-----------------Declaration of signals-----------------
  //-----------------Packet Transmit signals-----------------
    bit [63:0]    pkt_tx_data;
   bit          pkt_tx_val;
    bit         pkt_tx_sop;
     bit         pkt_tx_eop;
   bit [2:0]     pkt_tx_mod;
   bit          pkt_tx_full;
  
 //-----------------Packet Receive signals-----------------
    logic           pkt_rx_ren;
    logic           pkt_rx_avail;
    logic [63:0]    pkt_rx_data;
    logic           pkt_rx_val;
    logic           pkt_rx_sop;
    logic           pkt_rx_eop;
    logic [2:0]     pkt_rx_mod;
    logic           pkt_rx_err;
endclass
`endif

    

