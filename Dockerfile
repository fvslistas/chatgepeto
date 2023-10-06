FROM python:3

RUN pip install --upgrade pip
RUN pip install numpy
RUN pip install pandas
RUN pip install matplotlib
RUN pip install jupyterlab
RUN pip install plotly

CMD ["jupyter-lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]

