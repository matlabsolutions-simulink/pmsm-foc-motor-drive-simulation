# Permanent Magnet Synchronous Motor (PMSM) Field-Oriented Control (FOC)

[![MATLAB](https://img.shields.io/badge/MATLAB-R2023b%20%7C%20R2024b-0076A8?logo=mathworks&logoColor=white)](https://www.mathworks.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Domain](https://img.shields.io/badge/Domain-Power%20Electronics%20&%20Electric%20Drives-lightgrey.svg)](#)

A standalone MATLAB implementation of Permanent Magnet Synchronous Motor (PMSM) Field-Oriented Control (FOC). Includes the governing dynamics, analytical formulations, and an executable script you can run directly without proprietary third-party dependencies.

## Overview

This repository provides a field-oriented control (FOC) script for permanent magnet synchronous motors. It implements Clarke and Park coordinate transformations, decoupled d-q current regulation, and calculates PI tuning gains based on the modulus optimum criterion.

## Governing Equations & Mathematical Formulation

### Park Transformation Matrix ($abc \to dq0$)

$$
\begin{bmatrix} i_d \\ i_q \end{bmatrix} = \frac{2}{3} \begin{bmatrix} \cos\theta_e & \cos\left(\theta_e - \frac{2\pi}{3}\right) & \cos\left(\theta_e + \frac{2\pi}{3}\right) \\ -\sin\theta_e & -\sin\left(\theta_e - \frac{2\pi}{3}\right) & -\sin\left(\theta_e + \frac{2\pi}{3}\right) \end{bmatrix} \begin{bmatrix} i_a \\ i_b \\ i_c \end{bmatrix}
$$

### Electromagnetic Torque Equation

$$
T_e = \frac{3}{2} p \left[ \lambda_{\text{pm}} i_q + (L_d - L_q) i_d i_q \right]
$$

For a surface-mounted PMSM ($L_d = L_q$), controlling $i_d = 0$ simplifies the torque directly to $T_e = \frac{3}{2} p \lambda_{\text{pm}} i_q$.

## Getting Started

### Prerequisites
- MATLAB (tested on R2022b through R2024b)
- Standard base MATLAB installation (no paid external toolboxes required for this starter script)

### Running the Code
1. Clone the repository:
   ```bash
   git clone https://github.com/matlabsolutions-simulink/pmsm-foc-motor-drive-simulation.git
   cd pmsm-foc-motor-drive-simulation
   ```
2. Open MATLAB, navigate to the cloned folder, and run:
   ```matlab
   run_pmsm_foc_simulation
   ```

## Need the Complete Simulink or Simscape Model?

If you are working on a university capstone, thesis, or lab assignment and need the complete `.slx` model with Simscape physical networks, custom parameter lookup tables, or automated test harnesses, our team at [MATLABSolutions.com](https://www.matlabsolutions.com/order-now.php?ref=github_pmsm_foc_motor_drive_simulation) provides custom academic simulation and consulting support.

## Technical Inquiries & Contact
- Website: [matlabsolutions.com](https://www.matlabsolutions.com)
- Custom Consulting Portal: [matlabsolutions.com/order-now.php](https://www.matlabsolutions.com/order-now.php)
- Email: info@matlabsolutions.com

## License
This project is open-source under the [MIT License](LICENSE).
