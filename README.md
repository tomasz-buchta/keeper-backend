# Description
This is example implementation of GraphQL api with ruby and graphql ruby

The code is striving to be simple, such that people without much experience can understand it without hassle.

# Usage

Its best to use insomnia for querying this api

Sample curl
```
curl --request POST \
  --url http://localhost:5000/graphql \
  --header 'content-type: application/json' \
  --data '{"query":"{\n\tnoteSearch {\n\t\tid\n\t\tbody\n\t}\n}\n"}'
```

# Setup

Clone the repo

You need to have postgresql db installed

```
bundle
bundle exec bin/rails db:setup
bundle exec bin/rails server
```

`bundle exec bin/rspec` to run specs

# Notes

Blatant errors made in implementation
* [ ] Not using types.ID for all objects
* [ ] Not using `object_from_id` and `id_from_object`
* [ ] Not limiting the number of objects returned from queries
