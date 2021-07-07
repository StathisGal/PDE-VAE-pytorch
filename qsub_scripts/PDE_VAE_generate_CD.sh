#!/bin/bash

#PBS -lselect=1:ncpus=8:mem=96gb
#PBS -lwalltime=24:00:00

#######
## For getting a script without gpu use:
## -> #PBS -lselect=1:ncpus=1:mem=1gb
## For getting a script with a gpu use: 
## -> #PBS -lselect=1:ncpus=16:mem=96gb:ngpus=4:gpu_type=RTX6000
## cpus must be 4*n where n the number of requested gpus and memory is 24*n

#----------------------#
#                      #
#  Setting parameters  #
#                      #
#----------------------#

## Path to python inter
PYTHONCMD="/rds/general/user/sg21/home/miniconda3/bin/python"

## Path to folder containign the code
PROJECTPATH="/rds/general/project/arise/live/PDE_VAE_pytorch_forked/data"

## Name of the executable file
PYTHONFILE='generate_CD.py'

## arguments
ARGS=""


########
# Code #
########

cd ${PROJECTPATH}
${PYTHONCMD} ${PYTHONFILE} ${ARGS}