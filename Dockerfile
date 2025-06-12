FROM runpod/pytorch:2.2.0-py3.10-cuda12.1.1-devel-ubuntu22.04

RUN apt update -y ; apt upgrade -y

# Install all needed packages for SwarmUI
RUN apt install git python3-pip python3-venv wget tmux git -y

# Install dotnet
RUN wget https://builds.dotnet.microsoft.com/dotnet/scripts/v1/dotnet-install.sh -O dotnet-install.sh
RUN chmod +x dotnet-install.sh
RUN ./dotnet-install.sh
RUN rm dotnet-install.sh

# Move to default persistent storage for RunPod instances
WORKDIR /workspace

# Expose SwarmUI and ComfyUI ports
EXPOSE 7801 7821 22

COPY ./post_start.sh /post_start.sh
