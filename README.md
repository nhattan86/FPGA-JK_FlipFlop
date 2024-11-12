# FPGA-JK_FlipFlop

This VHDL code implements a **JK Flip-Flop**, a type of sequential logic circuit. It has two inputs `J` and `K`, as well as asynchronous `SET` and `CLR` inputs for setting and clearing the output, respectively. The flip-flop has two outputs: `Q` (the normal output) and `Qb` (the complement of `Q`).

- **SET (`SET = '0'`)**: Forces `Q` to `1`, regardless of the values of `J` and `K`.
- **CLEAR (`CLR = '0'`)**: Forces `Q` to `0`, overriding the `J` and `K` inputs.
- **JK Flip-Flop Logic**:
  - If `J = 0` and `K = 0`: No change to the current state (`Q` retains its value).
  - If `J = 0` and `K = 1`: Resets the output (`Q` becomes `0`).
  - If `J = 1` and `K = 0`: Sets the output (`Q` becomes `1`).
  - If `J = 1` and `K = 1`: Toggles the output (`Q` changes to its complement).

The JK Flip-Flop is a versatile memory element used in counters, shift registers, and other sequential logic applications.
