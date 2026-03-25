import os

RNS_CONFIGDIR = os.environ.get("RNS_CONFIG_PATH", "/config")
STORAGE_PATH = os.path.join(RNS_CONFIGDIR, "storage")

NODE_IDENTITY_PATH = os.path.join(RNS_CONFIGDIR, "identity")
ANNOUNCE_NAME = os.environ.get("ANNOUNCE_NAME", "teapot")
PAGES_DIRECTORY = os.environ.get("PAGES_DIRECTORY", "/usr/local/share/teapot")
