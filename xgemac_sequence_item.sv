//--------------------------------------------------------------------------------------------
// Class: in_sequence_item
// This class holds the data items required to drive the stimulus to dut
//--------------------------------------------------------------------------------------------
class in_sequence_item extends uvm_sequence_item;
  
  `uvm_object_utils(in_sequence_item)
  
  //-----------------Declaration of signals-----------------
  
  
 
  
  extern function new (string name = "axi_master_transaction");    
endclass

    
//--------------------------------------------------------------------------------------------
function axi_master_transaction::new(string name = "axi_master_transaction");
  super.new(name);
endfunction : new
