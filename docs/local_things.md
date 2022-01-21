<!-- copy snippet below for actual docs in docusaurus -->

## Setting Things Up Locally

The docker containers and dockercompose files get you an environment where you can run each portion of the 
app and run tests and such as they do in CI.  This does not get you linting and other things as the gems / 
npm packages are all installed in the docker containers.

If you would like your editor to place nice with the directory, you will have to set up Ruby / Node with 
helpful instructions below, or do it yourself because you're confident doing it yourself.

**Please note** we spent some time trying to get the linters / other local things running in the containers in a way 
that allows for this to be 100% dockerfied.  We did not find any solutions that didn't just make our lives that much harder, which dev tooling shouldn't.  If you are aware of one, please let us know we would love to hear it!

### API

1. Install Ruby.  **It is highly recommended** you do so through [rbenv](https://github.com/rbenv/rbenv#installation) to take advantage of the project configuration.

TODO: FINISH THIS

### UI

1. Install Node.js. **It is highly recommended** you do so through [nvm](https://github.com/nvm-sh/nvm#installing-and-updating) to take advantage of the project configuration.

2. From the project root, go to the ui directory and run `nvm install`.  NVM should install the correct version in the .nvmrc file.

```
cd ui/ && nvm install
```

3. Install dependencies

```
npm install
```

You should now have the environment installed locally, and can run it standalone if you wish with `npm start`.  At the very least you should be able to use the linter
and such.



### Docs (coming soon)

coming soon