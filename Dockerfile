FROM continuumio/miniconda3
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN	apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

RUN	conda update --yes -n base -c defaults conda && \
	conda update --yes --all 

RUN cd /opt && git clone https://github.com/mattarnoldbio/alphapickle && \
	bash -c 'eval "$(conda shell.bash hook)" && \
	conda env create --name alphapickle --file /opt/alphapickle/linux64requirements.yml && \
	date +"%Y-%m-%d-%H%M" > /last_update'

