[![Docker Pulls](https://img.shields.io/docker/pulls/eeems/reticulum.svg)](https://hub.docker.com/r/eeems/reticulum)

You can find the source here: https://github.com/Eeems/images

This image contains a base reticulum and lxmf install and by default starts rnsd. You can mount your own configuration folder to `/config`, and it will generate the configuration on first launch. If you add the following interface you will be able to have the lxmd/echobot etc images automatically connect if they are on the same network as the main image and it's hostname is reticulum.

```
  [[Local]]
    type = BackboneInterface
    enabled = Yes
    listen_on = 0.0.0.0
    target_port = 4242
```
