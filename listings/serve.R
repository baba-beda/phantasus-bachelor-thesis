servePhantasus <- function(host, port,
                          staticRoot=system.file("www/phantasus.js", package="phantasus"),
                          cacheDir=tempdir()) {
  options(phantasusCacheDir=cacheDir)
  app <-
    Rook::URLMap$new(
      "/ocpu"=opencpu:::rookhandler("/ocpu"),
      "/?"=Rook::Static$new(
        urls = c('/'),
        root = staticRoot
      ))

  httpuv::runServer(host,
                    port,
                    app=app)

}