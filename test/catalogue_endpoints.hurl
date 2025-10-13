# Test Catalogues Listing Endpoint
# Is the intention that tern-cv, bdr-cv, nrm
GET {{baseURL}}/catalogues
HTTP 200
[Asserts]
header "Content-Type" contains "text/anot+turtle"
body contains "prez:count \"4\""
body contains "bdr-cat:vocabularies"
body contains "bdr-cat:datasets"
body contains "bdr-cat:models"
body contains "bdr-cat:validators"

# Test Dataset Object Endpoint
GET {{baseURL}}/catalogues/bdr-cat:datasets
Accept: text/anot+turtle
HTTP 200
[Asserts]
header "Content-Type" contains "text/anot+turtle"
body contains "bdr-cat:obs-datasets"
body contains "bdr-cat:ref-datasets"

# Test Dataset Object Endpoint
GET {{baseURL}}/catalogues/bdr-cat:datasets/collections
HTTP 200
[Asserts]
header "Content-Type" contains "text/anot+turtle"
body contains "prez:count \"2\""
body contains "bdr-cat:obs-datasets"
body contains "bdr-cat:ref-datasets"

# Test Models Object Endpoint
GET {{baseURL}}/catalogues/bdr-cat:models
HTTP 200
[Asserts]
header "Content-Type" contains "text/anot+turtle"
body contains "bdr-cat:abis-models"
body contains "bdr-cat:bdr-models"

# Test Models Listing Endpoint
GET {{baseURL}}/catalogues/bdr-cat:models/collections
HTTP 200
[Asserts]
header "Content-Type" contains "text/anot+turtle"
body contains "prez:count \"2\""
body contains "bdr-cat:abis-models"
body contains "bdr-cat:bdr-models"

# Test Validators Object Endpoint
GET {{baseURL}}/catalogues/bdr-cat:validators
HTTP 200
[Asserts]
header "Content-Type" contains "text/anot+turtle"
body contains "bdr-cat:abis-validators"
body contains "bdr-cat:bdr-validators"

# Test Validators Listing Endpoint
GET {{baseURL}}/catalogues/bdr-cat:validators/collections
HTTP 200
[Asserts]
header "Content-Type" contains "text/anot+turtle"
body contains "prez:count \"2\""
body contains "bdr-cat:abis-validators"
body contains "bdr-cat:bdr-validators"

# Test Vocabularies Object Endpoint
GET {{baseURL}}/catalogues/bdr-cat:vocabularies
HTTP 200
[Asserts]
header "Content-Type" contains "text/anot+turtle"
body contains "bdr-cat:abis"
body contains "bdr-cat:bdr-cv"
body contains "bdr-cat:alum"
body contains "bdr-cat:asls"
body contains "bdr-cat:nrm"
body contains "bdr-cat:tern-cv"

# Test Vocabularies Listing Endpoint
GET {{baseURL}}/catalogues/bdr-cat:vocabularies/collections
HTTP 200
[Asserts]
header "Content-Type" contains "text/anot+turtle"
body contains "prez:count \"6\""
body contains "bdr-cat:abis"
body contains "bdr-cat:bdr-cv"
body contains "bdr-cat:alum"
body contains "bdr-cat:asls"
body contains "bdr-cat:nrm"
body contains "bdr-cat:tern-cv"
