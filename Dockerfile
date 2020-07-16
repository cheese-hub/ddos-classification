# Created by Trishank Rao (rao78@purdue.edu)

FROM jupyter/base-notebook

#install required python libraries
RUN conda update -n base conda 
RUN conda install -q -y scikit-learn
RUN conda install -q -y scipy 
RUN conda install -q -y pandas 
RUN conda install -q -y numpy 
RUN conda install -q -y seaborn
RUN conda install -q -y matplotlib 
RUN conda install -q -y IPython


#Copy primary notebook
COPY --chown=1000:100 ddos-classification.ipynb $HOME/

#Copy necessary dataset files
COPY --chown=1000:100 netbios_day1.csv $HOME/
COPY --chown=1000:100 netbios_day2.csv $HOME/
COPY --chown=1000:100 portmap.csv $HOME/
COPY --chown=1000:100 Syn_day1.csv $HOME/
COPY --chown=1000:100 Syn_day2.csv $HOME/

#Set working directory
WORKDIR $HOME/

#Assign User ID
USER $NB_UID

#Set environment path
ENV PATH=$HOME/app:$PATH

WORKDIR $HOME


CMD ["start-notebook.sh", "--NotebookApp.token="]

