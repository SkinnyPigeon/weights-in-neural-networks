FROM ubuntu:bionic
RUN apt-get update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:deadsnakes/ppa -y && \
    apt install python3.8 python3-pip python3.8-dev ffmpeg -y
RUN python3.8 -m pip install --upgrade pip
RUN python3.8 -m pip install tensorflow
RUN python3.8 -m pip uninstall tensorflow-io
RUN python3.8 -m pip install --no-deps tensorflow-io
RUN python3.8 -m pip install numpy pandas scikit-learn matplotlib scipy jupyter python-Levenshtein
COPY notebooks/ notebooks
CMD ["jupyter", "notebook", "--ip='*'", "--allow-root", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''", "--notebook-dir=/notebooks"]