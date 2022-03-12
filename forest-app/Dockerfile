FROM continuumio/miniconda3

RUN conda install -y -c conda-forge forest=0.20.9 typer

COPY unified_model.nc unified_model.nc

ENV BOKEH_ALLOW_WS_ORIGIN '*'

RUN echo "Launch FOREST using bokeh serve"
# CMD ["forest", "view", "--no-open-tab", "--port", "5050", "--driver", "unified_model", "unified_model.nc"]
CMD ["bokeh", "serve", "/opt/conda/lib/python3.9/site-packages/forest", "--address", "0.0.0.0", "--port", "5050", "--args", "--file-type", "unified_model", "unified_model.nc"]


