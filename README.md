Run the [d2s-sparql-operations](https://github.com/MaastrichtU-IDS/d2s-sparql-operations) tool to perform operations on SPARQL endpoints using RDF4J (SPARQL query, split statements...).

Use Docker Image from https://github.com/MaastrichtU-IDS/d2s-sparql-operations

## Usage

### Upload RDF from local folder

```yaml
- uses: MaastrichtU-IDS/sparql-operations-action@v1
  with:
    operation: upload
    file: my-folder/*.ttl
    endpoint: https://graphdb.ontotext.com/repositories/test/statements
    user: ${{ secrets.SPARQL_USER }}
    password: ${{ secrets.SPARQL_PASSWORD }}
    inputvar: https://w3id.org/d2s/graph/geonames
    outputvar: https://w3id.org/d2s/metadata
    servicevar: http://localhost:7200/repositories/test-vincent
```

### Execute Insert queries using local folder

```yaml
- uses: MaastrichtU-IDS/sparql-operations-action@v1
  with:
    file: folder-with-rq-files/
    endpoint: https://graphdb.ontotext.com/repositories/test/statements
    user: ${{ secrets.SPARQL_USER }}
    password: ${{ secrets.SPARQL_PASSWORD }}
```

> All `.rq` files in the provided folder will be executed.

### Execute Insert queries using GitHub URL

And provide variables for the SPARQL query (input, output and service) which will be replaced at execution time.

```yaml
- uses: MaastrichtU-IDS/sparql-operations-action@v1
  with:
    file: https://github.com/MaastrichtU-IDS/d2s-scripts-repository/tree/master/sparql/compute-hcls-stats
    endpoint: https://graphdb.ontotext.com/repositories/test/statements
    user: ${{ secrets.SPARQL_USER }}
    password: ${{ secrets.SPARQL_PASSWORD }}
    inputvar: https://w3id.org/d2s/graph/geonames
    outputvar: https://w3id.org/d2s/metadata
    servicevar: http://localhost:7200/repositories/test-vincent
```

### Provide SPARQL query in param

```yaml
- uses: MaastrichtU-IDS/sparql-operations-action@v1
  with:
    query: "select * where {?s a ?type .} limit 100"
    endpoint: https://graphdb.ontotext.com/repositories/test/statements
    user: ${{ secrets.SPARQL_USER }}
    password: ${{ secrets.SPARQL_PASSWORD }}
```



