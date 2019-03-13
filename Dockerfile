FROM dynverse/dynwrapr:v0.1.0

ARG GITHUB_PAT

RUN R -e 'devtools::install_github("kieranrcampbell/pseudogp")'

COPY definition.yml run.R example.h5 /code/

ENTRYPOINT ["/code/run.R"]
