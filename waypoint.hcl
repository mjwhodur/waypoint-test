project = "sonarpolityczny"
app "webapi" {
  build {
    use "docker" {
    }
    registry {
      use "docker" {
        image = "sonarpolityczny"
        tag   = "latest"
      }
    }
  }
  deploy {
    use "nomad" {
      //The following field was skipped during file generation
      auth = ""
      //The following field was skipped during file generation
      consul_token = ""
      //The following field was skipped during file generation
      vault_token = ""
    }
  }
  release {
    use "nomad-jobspec-canary" {
    }
  }
}
