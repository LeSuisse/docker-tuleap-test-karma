# Docker image to execute Tuleap Karma tests

## How to use

In order to execute tests, all you have to do is to execute this command:

    $ docker run --rm=true -v $PWD:/tuleap enalean/tuleap-test-karma --path PathToFolderContainingGruntFile

Please, be sure to have a correct Gruntfile that runs the tests on `grunt` command.
