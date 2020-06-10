Run the [d2s-sparql-operations](https://github.com/MaastrichtU-IDS/d2s-sparql-operations) tool to perform operations on SPARQL endpoints using RDF4J (SPARQL query, split statements...).

Use Docker Image from https://github.com/MaastrichtU-IDS/d2s-sparql-operations

## Usage

### Execute Insert queries using local folder

```yaml
- uses: MaastrichtU-IDS/sparql-operations-action@v1
  with:
    file: folder-with-rq-files/
    endpoint: https://graphdb.dumontierlab.com/repositories/test-vincent/statements
    user: ${{ secrets.GRAPHDB_USER }}
    password: ${{ secrets.GRAPHDB_PASSWORD }}
    inputvar: https://w3id.org/d2s/graph/geonames
    outputvar: https://w3id.org/d2s/metadata
    servicevar: http://localhost:7200/repositories/test-vincent
```

> All `.rq` files in the provided folder will be executed.

### Execute Insert queries using GitHub URL

```yaml
- uses: MaastrichtU-IDS/sparql-operations-action@v1
  with:
    file: https://github.com/MaastrichtU-IDS/d2s-scripts-repository/tree/master/sparql/compute-hcls-stats
    endpoint: https://graphdb.dumontierlab.com/repositories/test-vincent/statements
    user: ${{ secrets.GRAPHDB_USER }}
    password: ${{ secrets.GRAPHDB_PASSWORD }}
    inputvar: https://w3id.org/d2s/graph/geonames
    outputvar: https://w3id.org/d2s/metadata
    servicevar: http://localhost:7200/repositories/test-vincent
```

### Provide SPARQL query in param

```yaml
    inputvar: https://w3id.org/d2s/graph/geonames
    outputvar: https://w3id.org/d2s/metadata
    servicevar: http://localhost:7200/repositories/test-vincent- uses: MaastrichtU-IDS/sparql-operations-action@v1
  with:
    query: "select * where {?s a ?type .} limit 100"
    endpoint: https://graphdb.dumontierlab.com/repositories/test-vincent/statements
    user: ${{ secrets.GRAPHDB_USER }}
    password: ${{ secrets.GRAPHDB_PASSWORD }}
```



