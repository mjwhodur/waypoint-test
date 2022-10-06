project = "sonarpolityczny"

/* app "webapp" {
  path = "src"
  build {
    use "pack" {
      
    }
    registry {
      use "docker" {
        image = "nomad-nodejs-web"
        tag   = "1"
        local = true
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

} */

app "app2" {

path = "app2"

build {
  use "docker" {}
}

deploy {
  use "nomad" {
    datacenter = "ph"
    namespace = "default"
  }

  use "kubernetes" {}
}

}