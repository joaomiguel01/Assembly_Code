# MIPS Assembly Practice & Projects

This repository contains a collection of MIPS Assembly programming exercises and graphical projects designed for the MARS (MIPS Assembler and Runtime Simulator) environment. The project is divided into progressive levels, covering basic arithmetic, control structures, memory management, and Memory-Mapped I/O (MMIO) for graphical applications like the classic Snake game.

## 🚀 Features

* **Basic I/O & Arithmetic:** System calls for reading/printing integers and strings.
* **Control Flow:** Implementation of branches, conditionals, and loops.
* **Memory & Arrays:** Traversing arrays, string manipulation, and stack operations.
* **Graphical Applications:** Real-time pixel rendering and keyboard input using MARS built-in tools.

## 📋 Prerequisites

To assemble and run these scripts, you will need:

1. **Java Runtime Environment (JRE):** MARS is a Java-based application. Ensure you have JRE 8 or newer installed on your machine.
2. **MARS Simulator:** Download the `Mars4_5.jar` file from the [official source](https://github.com/dpetersanderson/MARS/releases/tag/v.4.5.1) or its GitHub mirrors.

## ⚙️ How to Run

### Standard Exercises (Console)
1. Open the MARS simulator (`java -jar Mars4_5.jar`).
2. Go to **File** > **Open** and select any `.asm` file from the repository.
3. Click the **Assemble** button (the wrench and screwdriver icon) or press `F3`.
4. Click the **Run** button (the green play icon) or press `F5`.
5. Interact with the program using the **Run I/O** tab at the bottom of the MARS window.

### Running Graphical Projects (e.g., Snake Game)
Programs that use pixel graphics and real-time input require specific MARS tools to be active before running:

1. Open your game `.asm` file in MARS.
2. Go to the **Tools** menu and open **Bitmap Display**.
3. Go to the **Tools** menu again and open **Keyboard and Display MMIO Simulator**.
4. In both tool windows, click the **Connect to MIPS** button at the bottom left.
5. In the **Bitmap Display** window, ensure the base address matches your code configuration (usually `0x10040000 (heap)` or `0x10010000 (data)`).
6. Assemble (`F3`) and Run (`F5`) the code. 
7. Make sure to click on the bottom text box of the **Keyboard Simulator** window to send your key presses (W, A, S, D) to the game.

## 📄 License

This project is licensed under the MIT License - see the LICENSE details below:

```text
MIT License

Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
