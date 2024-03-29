FROM m1mbert/cxlb-gnuradio-3.8:1.0

RUN apt install net-tools

RUN pip3 install --upgrade pip
RUN pip3 install tensorflow==2.4.0

RUN git clone https://github.com/Notou/gr-learning.git
RUN cd gr-learning && mkdir build 
RUN cd gr-learning/build && cmake -DCMAKE_INSTALL_PREFIX=/cortexlab/toolchains/current ..
RUN cd gr-learning/build && make install
