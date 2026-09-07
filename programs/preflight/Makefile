SOURCES = MAIN.lvdc \
	  POWER_UP_INITIALIZE.lvdc \
	  FORCED_BEGIN_AND_INITIALIZE.lvdc \
	  MODE_SORT.lvdc \
	  SYNC_RESET.lvdc \
	  ERROR_MONITOR.lvdc \
	  ISSUE_STATUS_CODE.lvdc \
	  OUTPUT-INTERRUPT_GENERATE.lvdc \
	  INSTRUCTION_EXECUTE.lvdc \
	  ACCELEROMETER_MONITOR.lvdc \
	  REAL_TIME_UPDATE.lvdc \
	  LVDC_SELF_TEST.lvdc \
	  LVDA_TIMING_AND_COUNTER_TEST.lvdc \
	  REGISTER_INITIALIZE.lvdc \
	  HOP_400_INITIALIZE.lvdc \

.PHONY: all
all: yaASM.tsv

.PHONY: clean
clean:
	-rm -f yaASM.* *.lst

.PHONY: core
core: yaASM.tsv
	python3 ../../scripts/lvdc_tsv_to_mem.py $^ -o ../../iu/lvdc/core/

.DELETE_ON_ERROR:
yaASM.tsv: ${SOURCES}
	yaASM.py --newer < <(cat $^) >yaASM.lst
	@grep --after-context=6 "Assembly[-]message summary" \
		yaASM.lst
	@grep "Errors:                 0" yaASM.lst
