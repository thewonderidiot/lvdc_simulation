# lvdc_simulation

<img width="965" height="370" alt="Image" src="https://github.com/user-attachments/assets/5eaa792b-f226-44f8-be45-43643134c3bb" />

This project contains (very nearly) gate-accurate Verilog implementations of early breadboard versions of the Launch Vehicle Digital Computer (LVDC) and Launch Vehcle Data Adapter (LVDA), which together with the the analog Flight Control Computer (FCC) and a suite of sensors comprise the guidance, navigation, and control subsystem of the Saturn IB and Saturn V instrument units. There are two exceptions to full gate-accuracy:
* The real LVDC and LVDA utilized triple modular redundancy (TMR) for reliability. For the most part, this implementation only implements one of the three copies of all triplicated logic.
* A slight modification has been made to the `EXM` instruction logic (discussed further below).

With the EXM modification, these LVDC and LVDA implementations are fully capable of achieving nominal orbits when running the AS-512 (Apollo 17) and AS-513 (Skylab-1) flight programs in repeatable flight simulation mode.

## References

The primary references for this project are:
* [Laboratory Maintenance Instructions: Saturn V Launch Vehicle Digital Computer, Simplex Models, Volume I: General Description and Theory](https://www.ibiblio.org/apollo/Documents/LaboratoryMaintenanceInstructionsForLVDC-Volume1-GeneralDescriptionAndTheory.pdf)
* [Laboratory Maintenance Instructions: Saturn V Launch Vehicle Digital Computer, Simplex Models, Volume II: Maintenance Data](https://www.ibiblio.org/apollo/Documents/LaboratoryMaintenanceInstructionsForLVDC-Volume2-MaintenanceData.pdf)
* [Saturn V Simplex Models: Laboratory Maintenance Instructions for LVDA, Volume I: General Description and Theory](https://www.ibiblio.org/apollo/Documents/19730064316_1973064316.pdf)
* [Saturn V Simplex Models: Laboratory Maintenance Instructions for LVDA, Volume II: Maintenance Data](https://www.ibiblio.org/apollo/Documents/19730064317_1973064317.pdf)

Notably, Volume II of each set contains essentially complete logical schematics, which have been directly transcribed to Verilog with extremely little modification.

## Dependencies
* [iverilog](https://github.com/steveicarus/iverilog) - Verilog software simulation
* [GTKWave](https://gtkwave.sourceforge.net/) - Waveform visualization
* [VirtualAGC](https://github.com/virtualagc/virtualagc) - LVDC assembler
* Python3

## Running the software simulator

The software simulator can be built and run from the root of the repository with
```
make run
```
It will execute the software stored in the `module*.mem` files in the `core` directory. Simulation results can be viewed with
```
gtkwave iu.fst iu.gtkw
```

## Building LVDC software for use with the simulator

The included self-test software can be built for use with the simulator as follows, utilizing yaASM.py from VirtualAGC:
```
cd self-test
~/virtualagc/yaASM.py/yaASM.py < self-test.lvdc > self-test.lst
../scripts/lvdc_tsv_to_mem.py yaASM.tsv -o ../core
```

## The EXM problem

While debugging repeatable flight simulation runs of the AS-512 flight program, it became clear that the `EXM` instruction is expected to load its instruction-to-be-modified from the current data module (`DM`) rather than the current instruction module (`IM`). However, the logic presented in the Laboratory Maintenance Instructions appears to be implemented such that the target instructions are loaded from the `IM`. Outside of the schematics, all available references are frustratingly silent regarding the expected behavior.

While it is certainly possible that a transcription error on my part resulted in the wrong module being used, I cannot for the life of me find any such error -- or even a feasible way that a theoretical error could result in the wrong module being selected. If you find such a problem, please let me know!

For now, I am operating under the assumption that the switch from `IM` to `DM` for `EXM` was a design change implemented after the reference documents were written. To make the simulator work correctly, I have implemented my own version of the change, in order to force selection of `DM` when `EXM` is loading the target instruction. Only the HOP Constant Serializer and Memory Read Latches module needs to be modified. The changes are shown in red:

<img width="691" height="775" alt="image" src="https://github.com/user-attachments/assets/7c47e056-32ae-45f0-a073-06c4efaadf11" />

Adding `EXMVN` to gate A5 of A1A14A prevents the `REI` (Read Instruction Latch) from being set if the current instruction is `EXM`. On card A1A14B, the new A99 gates will set the `RED` (Read Data Latch) during phase A of bit time 7 if the current instruction is `EXM`. The new `G6VN` input to gate A13 restricts `RED` from resetting outside of bit time 5.

## Self-test software

To date, no original LVDC self-test software has come down to us. What _has_ survived is [a listing of self-test software for the Programmable Test Controller (PTC)](http://ibiblio.org/apollo/Documents/19730064346_1973064346.pdf#page=434), an LVDC derivative built by IBM for test automation. The PTC deletes unnecessary instructions, replacing them with expanded I/O instructions capable of interfacing with many peripherals, including a typewriter, a printer, a plotter, etc.

The `self-test` folder in this repository contains an ongoing effort to modify this PTC self-test software back into LVDC self-test software. All of the PTC-specific tests have been removed, and new LVDC-specific tests have been added. Unfortunately, the PTC lacks the three most complex instructions -- `EXM`, `MPY`, and `DIV` -- and so for these instructions, I am very much drinking my own kool-aid. The `EXM` tests were written based off of what made AS-512 repeatable simulation happy; and the `MPY` and `DIV` results are checked against what I observed the simulator producing. These instructions are at least sufficiently correct that repeatable simulations result in good orbits; but precision errors may nevertheless be present. If you have a similar project and get different results for `MPY` and `DIV`, please let me know.
