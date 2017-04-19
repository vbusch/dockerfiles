FROM ppatierno/qpid-proton:0.17.0
ADD router-collector.py /
ARG version=latest
ENV VERSION=${version}

EXPOSE 8080
CMD ["python", "/router-collector.py"]
