#!/bin/bash

#PBS -lselect=1:ncpus=32:mem=124gb
#PBS -lwalltime=72:00:00

#######
## For getting a script without gpu use: --> thoughput class (can ask up to 96g)
## -> #PBS -lselect=1:ncpus=1:mem=1gb
## For getting a script without gpu use: --> general class (can ask 62 or 124gb)
## -> #PBS -lselect=1:ncpus=32:mem=124gb
## For getting a script with a gpu use: 
## -> #PBS -lselect=1:ncpus=16:mem=96gb:ngpus=4:gpu_type=RTX6000
## cpus must be 4*n where n the number of requested gpus and memory is 24*n

#----------------------#
#                      #
#  Setting parameters  #
#                      #
#----------------------#

## Path to python inter
PYTHONCMD="/rds/general/user/sg21/home/miniconda3/envs/py2/bin/python"

## Path to folder containign the code
PROJECTPATH="/rds/general/project/arise/live/PDE_VAE_pytorch_forked/data"

## Name of the executable file
PYTHONFILE='generate_fiber.py'

## arguments
ARGS="-d 20"


########
# Code #
########

cd ${PROJECTPATH}
${PYTHONCMD} ${PYTHONFILE} ${ARGS}
