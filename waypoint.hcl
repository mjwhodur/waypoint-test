project = "sonarpolityczny"

app "webapp" {
  path = "src"
  build {
    use "pack" {
      
    }
    registry {
      use "docker" {
        image = "nomad-nodejs-web"
        tag   = "1"
        locapipl = true
      }
    }
  }

  deploy {
    use "nomad" {
      // these options both default to the values shown, but are left here to
      // show they are configurable
      datacenter = "ph"
      namespace  = "default"
    }
  }

}
