BootStrap: docker
From: ghcr.io/truatpasteurdotfr/alphapickle:main

%environment
# do not use ~/.local python
PYTHONNOUSERSITE=1 
export PYTHONNOUSERSITE

PATH=/opt/alphapickle:$PATH
export PATH

eval "$(conda shell.bash hook)" && \
conda activate alphapickle

%runscript
python /opt/alphapickle/run_AlphaPickle.py $@
