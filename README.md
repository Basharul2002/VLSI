# VLSI Repository

This repository contains various Verilog HDL implementations of VLSI components and systems.

## Contents

1. [Basic Gates](#basic-gates)
2. [Universal Gates](#universal-gates)
3. [Exclusive Gates](#exclusive-gates)
4. [Adders](#adders)
5. [Flip-Flops](#flip-flops)
6. [Control-Dominated System](#control-dominated-system)

---

## Basic Gates <a name="basic-gates"></a>

Basic gates are the fundamental building blocks of digital circuits. They perform basic logic functions such as AND, OR, and NOT.


### NOT Gate
The NOT gate, also known as an inverter, produces the complement of its input.

#### Truth Table:
| Input | Output |                
|-------|--------|                       
|   0   |   1    |
|   1   |   0    |

**Logic:** If the input is **high (1)**, then the output will be **low (0)**. Otherwise, the output will be **high (1)**.

![NOT Gate](images/not_gate.png)

### AND Gate
The AND gate produces a true output only if all of its inputs are true.

#### Truth Table:

| Input A | Input B | Output |
|---------|---------|--------|
|    0    |    0    |   0    |
|    0    |    1    |   0    |
|    1    |    0    |   0    |
|    1    |    1    |   1    |

**Logic:** If all input are **high (1)**, then the output will be **high (1)**. Otherwise, the output will be **low (0)**.

![AND Gate](images/and_gate.png)

### OR Gate
The OR gate produces a true output if any of its inputs are true.

#### Truth Table:

| Input A | Input B | Output |
|---------|---------|--------|
|    0    |    0    |   0    |
|    0    |    1    |   1    |
|    1    |    0    |   1    |
|    1    |    1    |   1    |

**Logic:** If the input are **low (0)**, then the output will be **low (0)**. Otherwise, the output will be **high (1)**.

![OR Gate](images/or_gate.png)

---

## Universal Gates <a name="universal-gates"></a>

Universal gates are gates that can be used to construct any other gate.

### NAND Gate
The NAND gate produces the complement of the AND function.

#### Truth Table:

| Input A | Input B | Output |
|---------|---------|--------|
|    0    |    0    |   1    |
|    0    |    1    |   1    |
|    1    |    0    |   1    |
|    1    |    1    |   0    |

**Logic:** If all inputs are **high (1)**, then the output will be **low (0)**. Otherwise, the output will be **high (1)**.

![NAND Gate](images/nand_gate.png)

### NOR Gate
The NOR gate produces the complement of the OR function.

#### Truth Table:

| Input A | Input B | Output |
|---------|---------|--------|
|    0    |    0    |   1    |
|    0    |    1    |   0    |
|    1    |    0    |   0    |
|    1    |    1    |   0    |

**Logic:** If all input are **low (0)**, then the output will be **high (1)**. Otherwise, the output will be **low (0)**.

![NOR Gate](images/nor_gate.png)

---

## Exclusive Gates <a name="exclusive-gates"></a>

Exclusive gates are gates that produce a true output only if exactly one of their inputs is true.

### EX-OR Gate
The EX-OR gate produces a true output if its inputs are different.

#### Truth Table:

| Input A | Input B | Output |
|---------|---------|--------|
|    0    |    0    |   0    |
|    0    |    1    |   1    |
|    1    |    0    |   1    |
|    1    |    1    |   0    |

**Logic:** If odd number of input are **high (1)**, then the output will be **high (1)**. Otherwise, the output will be **low (0)**


![EX-OR Gate](images/exor_gate.png)

### EX-NOR Gate
The EX-NOR gate produces a true output if its inputs are the same.

#### Truth Table:

| Input A | Input B | Output |
|---------|---------|--------|
|    0    |    0    |   1    |
|    0    |    1    |   0    |
|    1    |    0    |   0    |
|    1    |    1    |   1    |

**Logic:** If odd number of input are **high (1)**, then the output will be **low (0)**. Otherwise, the output will be **high (1)**

![EX-NOR Gate](images/exnor_gate.png)

---

## Adders <a name="adders"></a>

Adders are digital circuits that perform addition of numbers.

### Half Adder
A half adder adds two binary digits and produces a sum bit (S) and a carry bit (C).

![Half Adder](images/half_adder.png)

### Full Adder
A full adder adds three binary digits and produces a sum bit (S) and a carry bit (C).

![Full Adder](images/full_adder.png)

---

## Flip-Flops <a name="flip-flops"></a>

Flip-flops are digital circuits used to store binary data.

### D Flip-Flop
A D flip-flop stores one bit of data. It has a data input (D), a clock input (CLK), and an output (Q).

![D Flip-Flop](images/d_flipflop.png)

### JK Flip-Flop
A JK flip-flop is similar to a D flip-flop but has two control inputs (J and K).

![JK Flip-Flop](images/jk_flipflop.png)

### D Register
A D register is a set of D flip-flops used to store multiple bits of data.

![D Register](images/d_register.png)

---

## Control-Dominated System <a name="control-dominated-system"></a>

A control-dominated system is a digital system controlled by a finite state machine (FSM).

Prepare the design for an FSM that stays in an idle state where it generates an output called Ready and evaluates the state of an input called Go. If Go is low, it stays in the idle state. If Go is high, it generates three outputs—Red, Green, and Yellow—consecutively (one after another) for 3s, 3s, and 1s, respectively. The clock frequency is 1 Hz. Apply binary state encoding. Show FSM architecture, state chart, state table, and logic equations for next states and outputs.

![Control-Dominated System](images/control_system.png)

