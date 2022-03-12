FROM continuumio/miniconda3

RUN conda install -y -c conda-forge forest=0.20.10

COPY unified_model.nc unified_model.nc
COPY forest.config.yaml forest.config.yaml

ENV BOKEH_ALLOW_WS_ORIGIN '*'

CMD ["forest", "ctl", "--no-open-tab", "--port", "5050", "forest.config.yaml"]
# CMD ["bokeh", "serve", "/opt/conda/lib/python3.9/site-packages/forest", "--address", "0.0.0.0", "--port", "5050", "--args", "--config-file", "forest.config.yaml"]
