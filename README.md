# Deployment with DigitalOcean

Environment variable `DIGITALOCEAN_TOKEN` has to be exported before running provisioning.

## CI/CD

[GitHub Actions](https://github.com/features/actions) are used for CI/CD.

Tests are automatically done in master branch.

The following GitHub Actions are used:

* [Checkout](https://github.com/marketplace/actions/checkout)
* [Setup TFLint](https://github.com/marketplace/actions/setup-tflint)
