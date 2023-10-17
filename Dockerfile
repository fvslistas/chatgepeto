FROM python:3.6.15

RUN pip3 install --upgrade pip
RUN pip3 install numpy
RUN pip3 install pandas
RUN pip3 install matplotlib
RUN pip3 install jupyterlab
RUN pip3 install plotly
RUN pip3 install transformers

RUN pip3 install datasets

RUN pip3 install torch torchvision torchaudio

#RUN pip3 install tensorflow

WORKDIR /home


CMD ["jupyter-lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]

