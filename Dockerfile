FROM cirss/repro-parent:latest

COPY exports /repro/exports

ADD ${REPRO_DIST}/setup /repro/dist/
RUN bash /repro/dist/setup

USER repro

RUN repro.require repro master ${REPROS_DEV}
RUN repro.require shell-notebook exports --dot

CMD  /bin/bash -il
