MODULES = clock_drivers \
	  timing \
	  osc_buf \
	  clock_logic \

COMPONENTS = a \
	     bfr_pa \
	     bfr_shp \
	     cef \
	     cg1 \
	     cg2 \
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

SOURCES = $(MODULE_SOURCES)\
	  $(COMPONENT_SOURCES)\
	  lvdc.v\
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
