# Created by Trishank Rao (rao78@purdue.edu)
# Modified by Rajesh Kalyanam (for CHEESE)

FROM jupyter/base-notebook:6d42503c684f

#install required python libraries
RUN conda install -q -y scikit-learn scipy pandas numpy seaborn matplotlib IPython


#Copy primary notebook
COPY --chown=1000:100 ddos-classification.ipynb $HOME/

#Set working directory
WORKDIR $HOME/

#Assign User ID
USER $NB_UID

#Set environment path
ENV PATH=$HOME/app:$PATH

WORKDIR $HOME

CMD ["start-notebook.sh", "--NotebookApp.token=", "--NotebookApp.max_buffer_size=2000000000"]

