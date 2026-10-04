# Permanent Magnet Synchronous Motor (PMSM) Field-Oriented Control (FOC)

[![MATLAB](https://img.shields.io/badge/MATLAB-R2023b%20%7C%20R2024b-0076A8?logo=mathworks&logoColor=white)](https://www.mathworks.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Engineering Domain](https://img.shields.io/badge/Domain-Power%20Electronics%20&%20Electric%20Drives-blue.svg)](#)
[![Status](https://img.shields.io/badge/Simulations-Verified%20Passing-success.svg)](#)

> **Official Open-Source Engineering Package by [MATLABSolutions.com](https://www.matlabsolutions.com)**  
> High-performance numerical simulation, algorithm modeling, and verified state equations.

---

## 🎯 Overview & Problem Statement
Vector field-oriented control (FOC) of a PMSM motor using Clarke and Park transformations, cascaded d-q current decoupling loops, and speed trajectory tracking.

This repository provides verified, modular MATLAB source code and analytical formulas designed for university research, ABET/CEAB engineering labs, capstone design, and industrial modeling.

---

## 📐 Mathematical Formulation & Governing Equations

- **Park Transformation ($abc \to dq0$):**
  $$\begin{bmatrix} i_d \\ i_q \end{bmatrix} = \frac{2}{3} \begin{bmatrix} \cos\theta_e & \cos(\theta_e - \frac{2\pi}{3}) & \cos(\theta_e + \frac{2\pi}{3}) \\ -\sin\theta_e & -\sin(\theta_e - \frac{2\pi}{3}) & -\sin(\theta_e + \frac{2\pi}{3}) \end{bmatrix} \begin{bmatrix} i_a \\ i_b \\ i_c \end{bmatrix}$$
- **Electromagnetic Torque Equation:**
  $$T_e = \frac{3}{2} p [\lambda_{pm} i_q + (L_d - L_q) i_d i_q]$$

---

## 🚀 Quickstart & Execution

### Prerequisites
- MATLAB R2022b, R2023b, R2024a, or R2024b
- Base MATLAB (Zero paid proprietary third-party toolboxes required for this starter script)

### Running the Benchmark Simulation
1. Clone this repository:
   ```bash
   git clone https://github.com/matlabsolutions-simulink/pmsm-foc-motor-drive-simulation.git
   cd pmsm-foc-motor-drive-simulation
   ```
2. Open MATLAB and navigate to the project directory.
3. Run the primary entry script in the MATLAB Command Window:
   ```matlab
   run_pmsm_foc_simulation
   ```

---

## 💡 Need the Full Parameterized Simulink (.slx) Model or Custom Help?

> [!TIP]
> ### 🎓 24/7 Academic & Industrial Consulting from PhD Engineers
> Are you working on a senior design capstone, master's thesis, or strict coursework deadline?
> 
> Our team of **500+ PhD Engineers** at **[MATLABSolutions.com](https://www.matlabsolutions.com)** provides:
> - **Complete Pre-Parameterized Simulink (`.slx`) & Simscape Models**
> - **Custom Parameter Tuning & Hardware-in-the-Loop (HIL) Integration**
> - **Line-by-Line Code Documentation & 1-on-1 Walkthroughs**
> - **100% Plagiarism-Free Turnitin Verification Reports**
> - **Fast Turnaround:** Urgent deliveries from 6 hours to 3 days
>
> 🚀 **[Request Custom Solution & Instant Quote on MATLABSolutions.com](https://www.matlabsolutions.com/order-now.php?ref=github_pmsm_foc_motor_drive_simulation)**

---

## 📚 Technical Support & Contact
- **Website:** [https://www.matlabsolutions.com](https://www.matlabsolutions.com)
- **Direct Order Portal:** [https://www.matlabsolutions.com/order-now.php](https://www.matlabsolutions.com/order-now.php)
- **Email:** info@matlabsolutions.com

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
