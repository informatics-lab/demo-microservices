FROM continuumio/miniconda3

RUN conda install -y -c conda-forge forest=0.20.9 typer

COPY unified_model.nc unified_model.nc

CMD ["forest", "view", "--driver", "unified_model", "unified_model.nc"]


