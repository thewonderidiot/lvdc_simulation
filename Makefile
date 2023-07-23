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

LVDA_MODULES = address_decode_1 \
	       int_countdn_proc_1 \
	       int_countdn_proc_2 \
	       processor_store \
	       timing_1 \
	       timing_2 \

COMPONENTS = bfr_pa \
	     bfr_shp \
	     cd4 \
	     cef \
	     cg1 \
	     cg2 \
	     dia \
	     dl \
	     dld \
	     dsa \
	     efl \
	     inv \
	     ia1 \
	     ia2 \
	     id \
	     mcd1 \
	     mcd2 \
	     nsi \
	     osc \
	     tmv \
	     vi \
	     vsg \

LVDC_MODULE_SOURCES = $(addsuffix .v, $(addprefix lvdc/modules/, $(LVDC_MODULES)))
LVDA_MODULE_SOURCES = $(addsuffix .v, $(addprefix lvda/modules/, $(LVDA_MODULES)))
COMPONENT_SOURCES = $(addsuffix .v, $(addprefix components/, $(COMPONENTS)))

SOURCES = lvdc_sim.v \
	  $(COMPONENT_SOURCES) \
	  lvdc/lvdc.v \
	  $(LVDC_MODULE_SOURCES) \
	  lvda/lvda.v \
	  $(LVDA_MODULE_SOURCES) \
	  
.phony: all
all: lvdc_sim

lvdc_sim: $(SOURCES)
	iverilog -o $@ $^

.phony: run
run: lvdc_sim
	vvp lvdc_sim -fst -n

.phony: clean
clean:
	rm -f lvdc_sim
