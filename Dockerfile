FROM ubuntu:15.04

RUN apt-get update && apt-get install sphinxsearch nano -y

RUN apt-get autoremove -y && apt-get autoclean

RUN cp /etc/sphinxsearch/sphinx-min.conf.dist /etc/sphinxsearch/sphinx.conf

VOLUME ["/etc/sphinxsearch"]

EXPOSE 9312 9306

CMD /usr/bin/searchd -c /etc/sphinxsearch/sphinx.conf --nodetach

