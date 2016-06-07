FROM scratch

ADD http /http

ENV PORT 8000
EXPOSE 8000

CMD ["/http"]
