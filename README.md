# Container Images
Generates container images nightly and pushes them to a private registry.

You can see the list of images in [src](src). Each image will contain a folder for every tag to generate. These images can optionally be based on the `latest` tag by using the `FROM` argument.
