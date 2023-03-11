MODULES = add_reg_x_decode \
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
	  op_code_reg \
	  osc_buf \
	  sect_reg_y_decode \
	  timing \
	  transfer_reg_1 \
	  transfer_reg_2 \

COMPONENTS = a \
	     bfr_pa \
	     bfr_shp \
	     cef \
	     cg1 \
	     cg2 \
	     dl \
	     dld \
	     dsa \
	     efl \
	     i \
	     ia1 \
	     ia2 \
	     nsi \
	     osc \
	     tmv \
	     vi \

MODULE_SOURCES = $(addsuffix .v, $(addprefix modules/, $(MODULES)))
COMPONENT_SOURCES = $(addsuffix .v, $(addprefix components/, $(COMPONENTS)))

SOURCES = $(MODULE_SOURCES) \
	  $(COMPONENT_SOURCES) \
	  lvdc.v \
	  lvdc_sim.v

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
