example-spree
=============

This example application shows how you can deploy a [Spree Commerce][spree] application to Deis.

## Deploying to Deis

Please follow the instructions on http://docs.deis.io on how to deploy Deis, then run

```console
$ deis create spree
$ deis config:set SECRET_TOKEN=$(rake secret)
$ deis config:set DATABASE_URL=postgres://username:password@mydb.example.com/mydbname
$ git push deis master
$ deis open
```

[spree]: http://spreecommerce.com/
