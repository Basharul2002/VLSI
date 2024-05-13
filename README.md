# VLSI

VHDL (VHSIC Hardware Description Language) is another hardware description language commonly used in VLSI (Very Large Scale Integration) design. It's used to describe the structure and behavior of electronic systems and is particularly popular for FPGA (Field-Programmable Gate Array) and ASIC (Application-Specific Integrated Circuit) design.

In VLSI design, VHDL serves a similar purpose to Verilog HDL, allowing designers to model and simulate digital circuits before implementation. Like Verilog, VHDL supports both behavioral and structural modeling, making it versatile for various design methodologies.

VHDL is known for its strong type system, which provides robustness and helps catch errors early in the design process. It also offers powerful features for hierarchical design, enabling designers to build complex systems from smaller, reusable components.

In this repository, focus on Verilog HDL implementations, but VHDL is another essential tool in the VLSI designer's toolbox.

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
Half adder is a combinational circuit which computer binary addition of two binary inputs. It is one of the basic combinational circuit in which we have combination of two gates (ex-or gate, and gate). The truth table of half adder is given below and we can write boolean expression for half adder as follows

![Half Adder](images/half_adder.png)

#### Truth Table:
| Input A | Input B | Output Sum | Output Carry |
|---------|---------|------------|--------------|
|    0    |    0    |     0      |       0      |
|    0    |    1    |     1      |       0      |
|    1    |    0    |     1      |       0      |
|    1    |    1    |     1      |       1      |

### Full Adder
Full adder is a combinational circuit which computer binary addition of three binary inputs. The truth table of full adder is given below and we can write boolean expression for full adder as follows

![Full Adder](images/full_adder.png)

#### Truth Table:
| Input A | Input B | Input Cin | Output Sum | Output Carry |
|---------|---------|-----------|------------|--------------|
|    0    |    0    |     0     |     0      |       0      |
|    0    |    0    |     1     |     1      |       0      |
|    0    |    1    |     0     |     1      |       0      |
|    0    |    1    |     1     |     0      |       1      |
|    1    |    0    |     0     |     1      |       0      |
|    1    |    0    |     1     |     0      |       1      |
|    1    |    1    |     0     |     0      |       1      |
|    1    |    1    |     1     |     1      |       1      |

---

## Flip-Flops <a name="flip-flops"></a>

Flip-flops are digital circuits used to store binary data.

### D Flip-Flop
D flip-flop is the most important flip-flop in digitial circuit. In this tutorial, we'll descrive D flip-fop in Verilog HDL without reset, with synchronous and asynchronous reset.

D flip-flop is also known as delay type flip-flop because output of d flip-flop is 1 clock pulse delay of the input appled to the d flip-flop . The truth table of positive edge triggered D flip-flop is given below. When there is negative edge trigger clock, it stores the previous input applied to the flip-flop. In positive edge trigger of clock, input of the d flip-flop is stored.


![D Flip-Flop](images/d_flipflop.png)

## D Flip-Flop

A D flip-flop is a fundamental building block in digital circuit design. It stores one bit of data and is commonly used in sequential logic circuits.

### Truth Table
| CLK(clock) | D (Input) |  Q (Output)  |  ~Q (Output)  |
|------------|-----------|--------------|---------------|
|      ↓     |     x     |   No Change  |   No Change   |
|      ↑     |     0     |      0       |    Set(1)   |
|      ↑     |     1     |      1      |   Reset(0)  |



### JK Flip-Flop
A JK flip-flop is similar to a D flip-flop but has two control inputs (J and K).

### Truth Table
| CLK(clock) | J (Input) | K(input) |  Q (Output)  |  ~Q (Output) | 
|------------|-----------|----------|--------------|--------------|
|      ↓     |     x     |     x    |   No Change  |  No Change   |
|      ↑     |     0     |     0    |   No Change  |  No Change   |
|      ↑     |     0     |     1    |   0(Reset)   |      1       |
|      ↑     |     1     |     0    |    1(Set)    |      0       |
|      ↑     |     1     |     1    |      ~Q      |      Q       |

![JK Flip-Flop](images/jk_flipflop.png)

### D Register
A D register is a set of D flip-flops used to store multiple bits of data.

![D Register](images/d_register.png)

---

## Control-Dominated System <a name="control-dominated-system"></a>

A control-dominated system is a digital system controlled by a finite state machine (FSM). In digital design, an FSM is a mathematical model of computation used to design sequential logic circuits. It consists of a finite number of states, transitions between these states triggered by inputs, and outputs associated with certain states.

Prepare the design for an FSM that stays in an idle state where it generates an output called Ready and evaluates the state of an input called Go. If Go is low, it stays in the idle state. If Go is high, it generates three outputs—Red, Green, and Yellow—consecutively (one after another) for 3s, 3s, and 1s, respectively. The clock frequency is 1 Hz. Apply binary state encoding. Show FSM architecture, state chart, state table, and logic equations for next states and outputs.

![Control-Dominated System](images/control_system.png)

## Solution

### Top-Level FSM Architecture

Here, we present the architecture of the finite state machine (FSM) designed to control the behavior of the control-dominated system. This FSM governs the transitions between different states based on the input signals and generates corresponding outputs.

### State Chart

The state chart illustrates the different states of the FSM and the transitions between them based on the input conditions.

### State Table

The state table provides a systematic representation of the FSM's behavior, detailing the next state and output logic equations for each state transition.

### Logic Equations

The logic equations describe the Boolean expressions used to determine the next state and outputs of the FSM based on the current state and input conditions.
