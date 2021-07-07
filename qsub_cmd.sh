#!/bin/bash

## TODO: add paths for error and log files
## Path of the jobscript

# ## Cmd for training PDE_VAE code for KS dataset
# JOBSCRIPT_ABS_PATH='./qsub_scripts/PDE_VAE_KS_training.sh'

# ## Cmd for training PDE_VAE code for NLSE dataset
# JOBSCRIPT_ABS_PATH='./qsub_scripts/PDE_VAE_NLSE_training.sh'

# ## Cmd for training PDE_VAE code for CD dataset
# JOBSCRIPT_ABS_PATH='./qsub_scripts/PDE_VAE_CD_training.sh'

# ## Cmd for training PDE_VAE code for fiber dataset
# JOBSCRIPT_ABS_PATH='./qsub_scripts/PDE_VAE_fiber_training.sh'

############################################################

# ## Cmd for training PDE_VAE code for KS dataset
# JOBSCRIPT_ABS_PATH='./qsub_scripts/PDE_VAE_KS_training.sh'

# ## Cmd for genearating CD dataset for PDE_VAE
# JOBSCRIPT_ABS_PATH='./qsub_scripts/PDE_VAE_generate_CD.sh'

# ## Cmd for genearating NLSE dataset for PDE_VAE
# JOBSCRIPT_ABS_PATH='./qsub_scripts/PDE_VAE_generate_NLSE.sh'

## Cmd for genearating fiber dataset for PDE_VAE
JOBSCRIPT_ABS_PATH='./qsub_scripts/PDE_VAE_generate_fiber.sh'


echo ${JOBSCRIPT_ABS_PATH}
qsub -o output.log -e error.log ${JOBSCRIPT_ABS_PATH}
