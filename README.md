# IEEE-754 Double-Precision Floating-Point Add/Sub Unit

## Overview

This project implements a hierarchical IEEE-754 double-precision floating-point addition and subtraction unit using LogicWorks. The architecture performs floating-point arithmetic by coordinating exponent comparison, operand alignment, mantissa operations, normalization, rounding, and exception handling within a modular datapath.

The project demonstrates core computer architecture and digital logic concepts through the design, implementation, and verification of a complete IEEE-754 floating-point arithmetic unit.

---

## Key Features

* IEEE-754 Double-Precision Floating-Point Arithmetic
* Floating-Point Addition and Subtraction
* Exponent Comparison and Alignment
* Operand Swapping Logic
* Mantissa Addition/Subtraction Datapath
* Leading Zero Counter (LZC)
* Normalization and Renormalization
* IEEE-754 Rounding Logic
* Exception Detection

  * Invalid Operation
  * Overflow
  * Inexact Result
* Comprehensive Verification and Corner-Case Testing

---

## System Architecture

The floating-point datapath is organized into multiple functional stages that process operands through the IEEE-754 addition/subtraction pipeline.

```text
Input Operands
      ↓
Corner Case Detection
      ↓
Exponent Comparison
      ↓
Operand Swapping
      ↓
Mantissa Alignment (Denormalization)
      ↓
Mantissa Addition / Subtraction
      ↓
Leading Zero Counter
      ↓
Normalization
      ↓
Exponent Adjustment
      ↓
Rounding
      ↓
Exception Generation
      ↓
IEEE-754 Double-Precision Result
```

The modular architecture enables reliable floating-point computation while correctly handling normalization, rounding, and IEEE-754 exception conditions.

---

## Design Methodology

### Digital Logic Design

* Designed a hierarchical floating-point datapath using LogicWorks
* Implemented modular arithmetic and control blocks for IEEE-754 operations
* Developed dedicated logic for exponent alignment, operand swapping, mantissa arithmetic, normalization, and exception handling
* Organized the design into reusable functional modules for improved verification and maintainability

### Verification

The design was validated through multiple verification approaches:

* IEEE-754 corner-case analysis
* Exponent and normalization verification
* Assembly-based floating-point testing
* Functional validation of rounding behavior
* Overflow, underflow, NaN, infinity, and denormal number testing

---

## Technologies Used

* LogicWorks
* IEEE-754 Floating-Point Arithmetic
* Digital Logic Design
* Computer Architecture
* Assembly Language
* Verification & Validation
* Floating-Point Datapath Design

---

## Repository Structure

```text
circuit/
    LogicWorks floating-point implementation

images/
    Datapath architecture
    Top-level interface diagrams

verification/
    IEEE-754 verification spreadsheets
    Corner-case validation

testing/
    Assembly-based IEEE-754 test suite

presentation/
    Final project presentation
```

---

## My Contributions

* Designed and verified components of the IEEE-754 floating-point datapath
* Contributed to exponent comparison, operand alignment, mantissa arithmetic, normalization, and exception handling logic
* Assisted in developing and validating floating-point test cases covering IEEE-754 edge conditions
* Participated in datapath integration, debugging, documentation, and final project presentation

---

## Project Outcome

This project successfully demonstrated the implementation and verification of a hierarchical IEEE-754 double-precision floating-point add/subtract unit capable of handling floating-point arithmetic, normalization, rounding, and exception generation.

The project strengthened practical experience in computer architecture, digital logic design, floating-point arithmetic, datapath development, and hardware verification methodologies.

---

## Academic Context

**California State University, East Bay**

**CMPE 421 – Computer Architecture II**

**Spring 2026**

**Team Members**

* Inderpal Singh
* Sukhpinder Singh
* Pierreline Jacob
* Feranmi Falodun
