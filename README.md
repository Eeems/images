[![build](https://github.com/Eeems/images/actions/workflows/build.yml/badge.svg)](https://github.com/Eeems/images/actions/workflows/build.yml)
# Container Images
Generates container images nightly and pushes them to dockerhub and a private registry.

You can see the list of images in [images](images). Each image will contain a folder for every tag to generate. These images can optionally be based on the `latest` tag by using the `FROM` argument.
