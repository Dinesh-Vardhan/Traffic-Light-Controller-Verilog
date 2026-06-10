# Traffic Light Controller using Verilog HDL

## Overview

Designed and implemented a Traffic Light Controller for a four-way intersection using Verilog HDL. The system manages North-South and East-West traffic flow through counter-based timing control and vehicle detection inputs. The design ensures safe signal transitions by incorporating dedicated yellow-light timing and coordinated traffic management logic.

## Features

- Four-way intersection traffic control
- North-South and East-West signal management
- Vehicle detection-based traffic switching
- Dedicated yellow signal timing
- Modular Verilog HDL implementation
- Counter-based timing control
- Functional verification using testbenches
- Waveform analysis using Xilinx Vivado

## System Architecture

The design consists of four major modules:

```text
Traffic Light Controller
│
├── Main Control Logic
├── NS Counter
├── EW Counter
└── Yellow Counter
```

### Main Control Logic
Controls traffic signal transitions based on:
- Counter values
- Vehicle detection signals
- Current traffic light state

### NS Counter
Generates timing intervals for North-South traffic flow.

### EW Counter
Generates timing intervals for East-West traffic flow.

### Yellow Counter
Provides safe transition timing between green and red signals.

## Traffic Flow Operation

### Initial State

```text
North-South : GREEN
East-West   : RED
```

### Signal Transition Sequence

```text
NS GREEN
    ↓
NS YELLOW
    ↓
EW GREEN
    ↓
EW YELLOW
    ↓
NS GREEN
```

Vehicle detection inputs influence the switching process to improve traffic flow efficiency.

## Tools Used

- Verilog HDL
- Xilinx Vivado

## Project Structure

```text
src/          -> RTL Source Files
testbench/    -> Verification Testbench
screenshots/  -> Simulation Waveforms
```

## Simulation Results

### Traffic Light Controller Waveform

![Traffic Light Controller](screenshots/Traffic%20light%20controller.png)

The simulation verifies:
- Correct traffic light sequencing
- Counter-based timing operation
- Yellow signal transitions
- Vehicle detection response
- Safe traffic flow coordination

## Applications

- Urban Traffic Management Systems
- Smart City Infrastructure
- Highway Intersections
- Toll Plaza Traffic Control
- Industrial Traffic Monitoring
- Automated Transportation Systems

## Key Learnings

- Verilog HDL Design
- Digital System Design
- Counter-Based Timing Control
- Traffic Control Algorithms
- Hardware Verification
- Waveform Analysis
- Modular RTL Development
- FPGA-Oriented Design Methodology

## Future Improvements

- FSM-Based Controller Architecture
- Adaptive Traffic Timing
- Emergency Vehicle Priority Handling
- Pedestrian Crossing Support
- FPGA Hardware Implementation
- Sensor-Based Smart Traffic Management
- Real-Time Traffic Analytics
