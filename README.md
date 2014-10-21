# Docker image to execute Tuleap Karma tests

## How to use

In order to execute tests, all you have to do is to execute this command:

    $ docker run --rm=true -v $PWD:/tuleap enalean/tuleap-test-karma --path PathToFolderContainingGruntFile

Please, be sure to have a correct Gruntfile that runs the tests on `grunt` command.


## Use with your CI

Please, be sure that your karma configuration returns a file called `test-results.xml`
that can be found in `PathToFolderContainingGruntFile`

Usage:

    $ docker run --rm=true -v $PWD:/tuleap enalean/tuleap-test-karma --path PathToFolderContainingGruntFile --output-dir /someFolderToPutReportIn

## Build packages

It can also build rpms, for that, specify the .spec filename:

    $ docker run --rm=true -v $PWD:/tuleap enalean/tuleap-test-karma --path PathToFolderContainingGruntFile --output-dir /someFolderToPutReportIn --build mysuperspecfile.spec
