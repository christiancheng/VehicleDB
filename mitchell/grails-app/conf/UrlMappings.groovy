/**
 * Author: Christian Cheng
 * Project: mitchell
 * File: UrlMappings.groovy
 */

class UrlMappings {
  static mappings = {
    “/$controller/$action?/$id?(.${format})?”{
      constraints {
          // apply constraints here
      }
    }

    “/”(action: "index", controller: "vehicle")
    “500"(view:’/error’)
  }
}
