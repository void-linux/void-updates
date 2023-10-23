target "docker-metadata-action" {}

target "_common" {
  inherits = ["docker-metadata-action"]
  dockerfile = "Dockerfile"
  cache-to = ["type=local,dest=/tmp/buildx-cache"]
  cache-from = ["type=local,src=/tmp/buildx-cache"]
}

target "void-updates" {
  inherits = ["_common"]
  platforms = ["linux/amd64", "linux/arm64", "linux/arm/v7", "linux/arm/v6"]
  args = { "LIBC" = "musl" }
}

