# FreTS and Pyraformer

This is an open-source library of the implementation of:
  - **FreTS** - Frequency-domain MLPs are More Effective Learners in Time Series Forecasting [[NeurIPS 2023]](https://arxiv.org/pdf/2311.06184.pdf) 
  - **Pyraformer** - Pyraformer: Low-complexity Pyramidal Attention for Long-range Time Series Modeling and Forecasting [[ICLR 2022]](https://openreview.net/pdf?id=0EXmFzUn5I) 

The repo is for the course project of Advanced Network Management (ANM) of Tsinghua University.
The code base is mainly modified from [Time Series Library (TSlib)](https://github.com/thuml/Time-Series-Library). 


## Usage

1. Install Python 3.8. We recommand using Anaconda to manage your environment. For example, you can create an environment with the following command.

   ```bash
   conda create -n ANM python=3.8
   ```

   After creating the environment, execute the following command to activate it.

   ```bash
   conda activate ANM
   ```

2. Execute the following command to install requiements.

   ```bash
   pip install -r requirements.txt
   ```

   > The requirements are verified with Ubuntu 22.04 and Nvidia RTX 3090 with CUDA 12.2.  If you encounter an error like this `RuntimeError: CUDA error: no kernel image is available for execution on the device` in the folloing steps, you may need to reinstall a compatible version of your environment, see [Pytorch](https://pytorch.org/get-started/locally/).
3. Prepare Data. Place the downloaded [datasets](https://cloud.tsinghua.edu.cn/d/1c9e8f2fffa8495e9ba1/) in the folder`./dataset`. The datasets used in this project are provided by TA.

4. Train and evaluate model. We provide the experiment scripts for all benchmarks under the folder `./scripts/`. You can reproduce the experiment results as the following examples:

   ```bash
   bash ./scripts/FreTS_ETT.sh
   ```

   or run all experiments with

   ```bash
   bash ./run.sh
   ```

   If you only want to run some tests after training, execute

   ```bash
   bash ./scripts/test-only/Tests.sh	# only contains four configurations to reproduce the figures in the report
   ```

