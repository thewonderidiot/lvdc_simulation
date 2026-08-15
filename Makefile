BUILD_DIR=$(shell pwd)/build/
SRC_DIR = $(shell pwd)

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
	       int_drivers_1 \
	       int_drivers_2 \
	       mode_buff_regs \
	       processor_store \
	       sd_sampler_1 \
	       sd_sampler_2 \
	       sd_sampler_3 \
	       sd_sampler_4 \
	       sd_sampler_5 \
	       sd_sampler_6 \
	       sd_sampler_7 \
	       simpl_drivers_1 \
	       simpl_drivers_2 \
	       simpl_drivers_3 \
	       simpl_drivers_4 \
	       simpl_drivers_5 \
	       simpl_drivers_6 \
	       simpl_drivers_7 \
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
	     sdi \
	     sdl \
	     tdh \
	     tdl \
	     tdm \
	     tmv \
	     vi \
	     vsg \

LVDC_MODULE_SOURCES = $(addsuffix .v, $(addprefix $(SRC_DIR)/iu/lvdc/modules/, $(LVDC_MODULES)))
LVDA_MODULE_SOURCES = $(addsuffix .v, $(addprefix $(SRC_DIR)/iu/lvda/modules/, $(LVDA_MODULES)))
COMPONENT_SOURCES = $(addsuffix .v, $(addprefix $(SRC_DIR)/iu/components/, $(COMPONENTS)))

IU_SOURCES = $(COMPONENT_SOURCES) \
	     $(SRC_DIR)/iu/iu.v \
	     $(SRC_DIR)/iu/lvdc/lvdc.v \
	     $(LVDC_MODULE_SOURCES) \
	     $(SRC_DIR)/iu/lvda/lvda.v \
	     $(LVDA_MODULE_SOURCES) \
	     $(SRC_DIR)/iu/cmd_decoder/cmd_decoder.v \
	     $(SRC_DIR)/iu/ciu/ciu.v \
	     $(SRC_DIR)/iu/switch_sel/switch_sel.v \
	     $(SRC_DIR)/iu/mod410/mod410.v \
	     $(SRC_DIR)/gse/gse.v \
	     $(SRC_DIR)/gse/clock_gen.v \
	     $(SRC_DIR)/gse/control.v \
	     $(SRC_DIR)/gse/lvdc_registers.v \
	     $(SRC_DIR)/gse/mult_div_counter.v \
	     $(SRC_DIR)/gse/parallel_register.v \
	     $(SRC_DIR)/gse/serial_register.v \
	     $(SRC_DIR)/gse/window.v \
	     $(SRC_DIR)/gse/uart/uart_tx.v \

SIM_SOURCES = $(SRC_DIR)/iu_sim.v \
	      $(IU_SOURCES)

FPGA_SOURCES = $(SRC_DIR)/fpga/hdl/lvdc_fpga.v \
	       $(IU_SOURCES)

CORE_FILES = iu/lvdc/core/module0.mem \
	     iu/lvdc/core/module1.mem \
	     iu/lvdc/core/module2.mem \
	     iu/lvdc/core/module3.mem \
	     iu/lvdc/core/module4.mem \
	     iu/lvdc/core/module5.mem \
	     iu/lvdc/core/module6.mem \
	     iu/lvdc/core/module7.mem
	  
.phony: all
all: iu_sim

iu_sim: $(SIM_SOURCES)
	iverilog -o $@ $^ -DCORE_PATH='"iu/lvdc/core/"' -Igse

iu_sim_clocked: $(SIM_SOURCES)
	iverilog -o $@ $^ -DCLOCKED=1 -DCORE_PATH='"iu/lvdc/core/"' -Igse

.phony: run
run: iu_sim
	vvp iu_sim -fst -n

.phony: run_clocked
run_clocked: iu_sim_clocked
	vvp iu_sim_clocked -fst -n

.phony: fpga
fpga: $(BUILD_DIR)/lvdc_fpga.bit

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/lvdc_fpga.bit : $(SRC_DIR)/fpga/impl.tcl $(SRC_DIR)/fpga/constr/lvdc_fpga.xdc $(BUILD_DIR)/post_synth.dcp | $(BUILD_DIR)
	cd $(BUILD_DIR) && vivado -mode batch -source $(SRC_DIR)/fpga/impl.tcl

$(BUILD_DIR)/post_synth.dcp : $(SRC_DIR)/fpga/synth.tcl $(FPGA_SOURCES) $(CORE_FILES) | $(BUILD_DIR)
	cd $(BUILD_DIR) && vivado -mode batch -source $(SRC_DIR)/fpga/synth.tcl

.phony: load
load: $(BUILD_DIR)/lvdc_fpga.bit
	openFPGALoader -b cmoda7_35t -f $(BUILD_DIR)/lvdc_fpga.bit

.phony: clean
clean:
	rm -rf build iu_sim
