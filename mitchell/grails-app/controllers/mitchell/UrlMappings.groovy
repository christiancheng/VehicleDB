package mitchell

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        //"/"(view:"/index")
        "/"(action: "index", controller: "vehicle")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
