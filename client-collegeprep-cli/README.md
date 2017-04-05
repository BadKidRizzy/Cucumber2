# Collegeprep

## Installation and dependencies

1. Update Node to v6.9.0 (or higher) and NPM to v3.0.0 (or higher)
```
    # Linux steps using Node Version Manager (see https://github.com/creationix/nvm):
    
    sudo apt-get update
    sudo apt-get install build-essential checkinstall libssl-dev
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    command -v nvm                                    # Should output "nvm" if all is well
    nvm install stable                                # This installs the latest stable version of Node
    node -v                                           # Should be at least 6.9.0
    npm -v                                            # Should be at least 3.0.0
    npm cache clean -f
```
       
2. Generate an SSH key and register it with AWS (instructions at http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-ssh-unixes.html)

3. Test SSH connection
```
    ssh git-codecommit.us-east-2.amazonaws.com
```
3. Clone the repo to your workspace
```
    git clone ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/client-collegeprep-cli
```
4. Install TypeScript, angular-cli, and NPM package dependencies
```
    npm install -g typescript
    npm install -g @angular/cli
    npm install
```


## Development server

`npm run [local|dev|qa|staging]` to serve the app which will use the specified endpoints. Localhost:3000. See /config/*.proxy.json and package.json scripts.


## Running end-to-end tests

`npm run live-integration-tests -- -- [local|dev|staging|qa]` to run tests against the specified endpoints.
TODO add/specify test env that uses a resettable test DB? instead of env arguments

`npm run mock-integration-tests` to run tests against mocked api. TODO Mocking http not yet implemented; https://github.com/angular/protractor/issues/3092

`npm run e2e-live` runs live tests without building the app (much faster), but make sure the app is being served on localhost:3000 first, with the desired env.

`npm run e2e-mock` runs tests against mock API, assuming the app is served using `npm run mock`.

## Build

Run `npm build -- --env=[dev|qa|staging|prod]` to build the project into the `dist/` directory.








## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive/pipe/service/class`.


## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).


## Deploying to Github Pages

Run `ng github-pages:deploy` to deploy to Github Pages.

## Further help

To get more help on the `angular-cli` use `ng --help` or go check out the [Angular-CLI README](https://github.com/angular/angular-cli/blob/master/README.md).
