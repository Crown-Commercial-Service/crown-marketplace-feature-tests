# Crown Marketplace - Feature tests

This repository contains feature tests for the [Crown Marketplace][] and [Crown Marketplace Legacy][] project which can be run in non development environments.

This is a ruby project which uses [Cucumber][] BDD framework and [Capybara][] to run the tests.

## Software Setup

### MacOS

This guide assumes you have Homebrew installed.

#### Check the Ruby version
Ensure that a ruby version manager (e.g. rvm or rbenv) is installed and set up properly, using 3.4.7 as the Ruby version before trying anything else. 

#### Software requirements

This project uses geckodriver, which requires the Firefox browser, as the web driver for the cucumber feature tests

```shell
brew install --cask firefox
brew install geckodriver
```

## Setting up the test environment

Before running the tests, make sure you have all the gems installed by running

```shell
bundle install
```

Crown Marketplace project has 5 environments:
- local - the development environment
- sandbox
- cmpdev - the QA environment
- preview
- production - the live environment

To run in a specific environment you will need to set the `TEST_ENV` environment variable, which is `local` by default.

The Crown Marketplace application requires users to be logged in when using it so you need to also set the authentication config.
For obvious reasons we do not store this config in this public repo so you will need to make your own config files in the `config/` folder.

The filename should be `environment.<TEST_ENV>.yml`, for example the config file for the cmpdev environment would be named `environment.cmpdev.yml`.
You can use [`config/environment.example.yml`](config/environment.example.yml) as base to fill in.

If you do not have any authentication details, speak to a developer on the project and they should be able to provide you with some.

### Test data

Some of the features will check the supplier results and so assume that the test data has been loaded into the system.
You can find the test data in the [`data/`][data folder] folder.

This data should never be uploaded to production.
We use [tags][] to make sure that only features that do not require test data are run on production.

## Running the features

I have created the `bin/run-cucumber` script to help with running the test.
This script will run the tests in the specified environment with the specified options and then build the test report.

To run all the tests use the `bin/run-cucumber` command and pass the environment to run the tests in

```shell
bin/run-cucumber <env>
```

To run a specific test add the file path after the command

```shell
bin/run-cucumber <env> features/path/to/feature.feature
```

To run the tests using a different profile, pass the profile argument

```shell
bin/run-cucumber <env> -p <profile>
```

By default the test run in a headless browser, to see the browser, pass the headless argument with a value of false

```shell
bin/run-cucumber <env> -h false
```

To run the tests in parallel, pass the number of process you wish to use

```shell
bin/run-cucumber <env> -n <number_of_processes>
```

> Note, I have found this to be a little bit flakey so use at your own risk

You can view the other options for the script with

```shell
bin/run-cucumber -h
```

### Profiles and Tags

As will as the default cucumber profiles (`default`, `rerun`, `wip`) we have an additional `accessibility` profile.
This is used to run our [accessibility features][] which we keep them separate from the service feature tests.

We also have some additional tags which are used during the setup of the `default` profile

| Tag                   | Purpose                                                                                                     |
| --------------------- | ----------------------------------------------------------------------------------------------------------- |
| @accessibility        | Marks a feature as an accessibility test and are not run as part of the default profile                     |
| @smoulder             | Used to mark a subset of the test that we can run after a release to make sure the applications are working |
| @production           | Marks a feature to be runable if `TEST_ENV` is production                                                   |

The reason we have special tags for production is that the features assume that test data is being used.
As we cannot use test data in production we use `@production` tag to mark tests we know will work in production.

Because we know some features will not work, there are some extra features that exist to be used when running tests on production.

### Accessibility features

We use [Axe Cucumber][] to in our accessibility tests.

To run an accessibility feature  you need to use the `accessibility` profile as accessibility are ignored by the default profile

```shell
bin/run-cucumber <env> -p accessibility features/path/to/feature.feature
```

## Linting

The [rubocop][] & [rubocop-rspec][] gems are used to enforce standard coding styles.
Some "cops" in the standard configuration have been disabled or adjusted in [`.rubocop.yml`][rubocop-yml].

Rubocop can be run with the command

```shell
bundle exec rubocop
```

## Contributing

To contribute to the project, you should checkout a new branch from `main` and make your changes.

Before pushing to the remote, you should squash your commits into a single commit.
This can be done using `git rebase -i main` and changing `pick` to `s` for the commits you want to squash (usually all but the first).
This is not required but it helps keep the commit history fairly neat and tidy

Once you have pushed your changes, you should open a Pull Request on the main branch which will run Rubocop.

Once all these have passed, and the PR has been reviewed and approved by another developer, you can merge the PR.

## Releases

We use GitHub releases/tags to manage the version of the feature tests that should be compatible with the apps.
The CHANGELOG.md shows which version of the feature tests should work with the versions of the applications.

To create a new release:
- From the release commit (nearly always the HEAD of the main branch) checkout a new branch with the release version in the format:
`release-<major>.<minor>.<patch>`
- Update the version number in the VERSION file
- Update the CHANGELOG with a list of the changes and their Pull Requests
- Commit the changes (with the commit message 'Release v<major>.<minor>.<patch>'), push to GitHub and open a Pull Request
- Once this Pull Request has been reviewed and merged a new GitHub release will be created

The `main` branch should run without failure against the cmpdev environemnt.


[Crown Marketplace]: https://github.com/Crown-Commercial-Service/crown-marketplace-legacy
[Crown Marketplace Legacy]: https://github.com/Crown-Commercial-Service/crown-marketplace-legacy
[Cucumber]: https://cucumber.io/
[Capybara]: https://github.com/teamcapybara/capybara
[data folder]: https://github.com/tim-s-ccs/crown-marketplace-feature-tests/blob/main/data
[tags]: #profiles-and-tags
[accessibility features]: #accessibility-features
[Axe Cucumber]: https://www.deque.com/axe/
[rubocop]: https://github.com/rubocop-hq/rubocop
[rubocop-rspec]: https://github.com/rubocop-hq/rubocop-rspec
[rubocop-yml]: https://github.com/tim-s-ccs/crown-marketplace-feature-tests/blob/main/.rubocop.yml
