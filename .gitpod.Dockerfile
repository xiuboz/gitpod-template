FROM gitpod/workspace-full

RUN sudo add-apt-repository ppa:system76/pop

# Install custom tools, runtime, etc.
RUN sudo apt-get update \
    && sudo apt-get --no-install-recommends install --yes atool xvfb \
    && sudo rm -rf /var/lib/apt/lists/*

RUN echo '30\n' > unattended 

# Install custom tools, runtime, etc.
RUN sudo apt-get update \
    && sudo apt-get --no-install-recommends install --yes xfce4 < unattended \
    && sudo rm -rf /var/lib/apt/lists/*

RUN sudo apt-get update \
    && sudo apt-get --no-install-recommends install --yes chromium \
    && sudo rm -rf /var/lib/apt/lists/*