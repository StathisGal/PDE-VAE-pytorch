#!/bin/bash 
#PBS -l walltime=240:00:00
## #PBS -l select=1:ncpus=4:mem=24gb 
##### For express queue
#PBS -N Climate-Lars
#PBS -lselect=1:ncpus=8:ngpus=8:mem=96gb
## #PBS -lselect=1:ncpus=4:mem=24gb:ngpus=1:gpu_type=RTX6000

export DIR_SIMUL=$PBS_O_WORKDIR
cd $DIR_SIMUL

echo "DIR_SIMUL = " $DIR_SIMUL
echo "Allocated nodes:"
cat $PBS_NODEFILE

NP=$(wc -l $PBS_NODEFILE | awk '{print $1}')
echo "Total CPU count = $NP"

module load anaconda3/personal
conda activate hjb_climate_jupyterlab
echo "CONDA_DEFAULT_ENV"
echo $CONDA_DEFAULT_ENV
echo "conda info"
conda info
module list

/usr/bin/time ./ConsumptionModel-bis.py
