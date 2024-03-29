LVDC_MODULES = add_reg_x_decode \
	       arithmetic \
	       buffer_register_12 \
	       buffer_register_3 \
	       clock_drivers \
	       clock_logic \
	       delay_line \
	       error_det_sw \
	       mem_mod_reg_sect_ser \
	       mem_parity_check \
	       mem_timing \
	       memory \
	       mult_div_1 \
	       mult_div_2 \
	       mult_div_3 \
	       op_code_reg \
	       osc_buf \
	       sect_reg_y_decode \
	       timing \
	       transfer_reg_1 \
	       transfer_reg_2 \

LVDA_MODULES = accel_time_proc_1 \
	       address_decode_1 \
	       address_decode_2 \
	       address_decode_3 \
	       buff_regs_1 \
	       buff_regs_2 \
	       dis_tran_prot \
	       disc_op_regs \
	       err_proc_tag_ms \
	       error_proc \
	       id_sampler_1 \
	       id_sampler_2 \
	       id_sampler_3 \
	       id_sampler_4 \
	       int_cont_regs \
	       int_countdn_proc_1 \
	       int_countdn_proc_2 \
	       mode_buff_regs \
	       processor_store \
	       sd_sampler_1 \
	       sd_sampler_2 \
	       sd_sampler_3 \
	       sd_sampler_4 \
	       sd_sampler_5 \
	       sd_sampler_6 \
	       sd_sampler_7 \
	       simp_drivers \
	       sw_sel_regs \
	       tag_real_tm_regs \
	       telem_control \
	       telem_storage \
	       timing_1 \
	       timing_2 \
	       tmr_drivers_1 \
	       tmr_drivers_2 \
	       tmr_drivers_3 \
	       tmr_drivers_4 \
	       transient_prot \

COMPONENTS = bfr_pa \
	     bfr_shp \
	     cd4 \
	     cef \
	     cg1 \
	     cg2 \
	     dia \
	     dib \
	     dl \
	     dld \
	     dsa \
	     dtp \
	     efl \
	     hci \
	     idh \
	     idl \
	     inv \
	     ia1 \
	     ia2 \
	     ib \
	     id \
	     mcd1 \
	     mcd2 \
	     nsi \
	     osc \
	     sdh \
	     tdh \
	     tdl \
	     tdm \
	     tmv \
	     vi \
	     vsg \

LVDC_MODULE_SOURCES = $(addsuffix .v, $(addprefix lvdc/modules/, $(LVDC_MODULES)))
LVDA_MODULE_SOURCES = $(addsuffix .v, $(addprefix lvda/modules/, $(LVDA_MODULES)))
COMPONENT_SOURCES = $(addsuffix .v, $(addprefix components/, $(COMPONENTS)))

SOURCES = iu_sim.v \
	  $(COMPONENT_SOURCES) \
	  lvdc/lvdc.v \
	  $(LVDC_MODULE_SOURCES) \
	  lvda/lvda.v \
	  $(LVDA_MODULE_SOURCES) \
	  mod410/mod410.v \
	  mod410/uart/uart_tx.v
	  
.phony: all
all: iu_sim

iu_sim: $(SOURCES)
	iverilog -o $@ $^

.phony: run
run: iu_sim
	vvp iu_sim -fst -n

.phony: clean
clean:
	rm -f iu_sim
