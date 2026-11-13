#syntax=docker/dockerfile:1.4
FROM eeems/remarkable-toolchain:base

COPY --from=eeems/remarkable-toolchain:6.0.112-rmpp /opt/codex/ferrari /opt/codex/ferrari
COPY --from=eeems/remarkable-toolchain:6.0.112-rmppm /opt/codex/chiappa /opt/codex/chiappa
COPY --from=eeems/remarkable-toolchain:6.0.112-rmppure /opt/codex/tatsu /opt/codex/tatsu
