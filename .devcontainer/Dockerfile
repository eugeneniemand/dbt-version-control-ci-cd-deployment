FROM ghcr.io/dbt-labs/dbt-core:latest

RUN apt-get update
RUN apt-get install -y wget unzip cron
RUN wget https://github.com/duckdb/duckdb/releases/download/v1.0.0/duckdb_cli-linux-amd64.zip -O duckdb.zip
RUN unzip duckdb.zip
RUN mv duckdb /usr/local/bin/
RUN rm duckdb.zip
RUN pip install dbt-duckdb
RUN apt-get install -y nano