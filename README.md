# Parameterized-Up-Down-Counter

This project implements a parameterized up/down counter in Verilog, supporting configurable bit width and custom count limits.
Up-count mode: Counter increments until a specified limit, then wraps to 0.
Down-count mode: Counter decrements until a lower threshold, then wraps to the maximum value.
Fully synthesizable and suitable for FPGA/ASIC applications.
Includes a testbench with clock generation, reset, and mode control for verification.
This design is flexible for modulo counters, timers, or custom sequential circuits.
