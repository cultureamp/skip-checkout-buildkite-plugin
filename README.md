# Skip Checkout Buildkite Plugin

Skips the checkout in a Buildkite step, by setting BUILDKITE_REPO to an empty string.

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - command: ls
    plugins:
      - cultureamp/skip-checkout#v1.0.0: ~
```

## Configuration

This plugin requires no configuration.

## Developing

To run the tests:

```shell
docker-compose run --rm tests
```

To run the linter:

```shell
docker-compose run --rm lint
```

To run shellcheck:

```shell
docker run --rm -v "$PWD:/mnt" koalaman/shellcheck:stable hooks/**
```

## Contributing

1. Fork the repo
2. Make the changes
3. Run the tests
4. Commit and push your changes
5. Send a pull request
