`ifndef XGEMAC_ENVIRONMENT_INCLUDED_
`define XGEMAC_ENVIRONMENT_INCLUDED_

class xgemac_env extends uvm_env;
 `uvm_component_utils(xgemac_env)

  in_agent in_agent_h;
  out_agent out_agent_h;
  wishbone_agent wishbone_agent_h;
  reset_agent reset_agent_h;
  xgemac_scoreboard xgemac_scoreboard_h;
 

 function new(string name = "xgemac_env", uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    in_agent_h = in_agent::type_id::create("in_agent_h", this);
    out_agent_h = out_agent::type_id::create("out_agent_h", this);
    wishbone_agent_h = wishbone_agent::type_id::create("wishbone_agent_h", this);
    reset_agent_h = reset_agent::type_id::create("reset_agent_h", this);
    xgemac_scoreboard_h =  xgemac_scoreboard::type_id::create(" xgemac_scoreboard_h", this);
  endfunction

  virtual function void connect_phase(uvm_phase phase);
    axi_master_agt_h.axi_master_mon_h.item_got_port.connect(axi_master_scb_h.item_got_export);
    axi_master_agt_h.axi_master_mon_h.item_got_port.connect(axi_master_cov_h.sub_export);
  endfunction

endclass
`endif
