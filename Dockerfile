FROM continuumio/anaconda3

ENV HOME /home/scientist

RUN useradd scientist \
    && mkdir $HOME \
    && chown --recursive scientist:scientist $HOME

USER scientist

WORKDIR ${HOME}

ENTRYPOINT ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888"]
