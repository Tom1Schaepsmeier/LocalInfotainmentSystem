###############################################################
#
# Copyright (c) Tom Schäpsmeier
#
# Description 
#
###############################################################

import std/[exitprocs, posix, strformat]
import ./[config, router]
import ./middlewares/formatters

proc main() = 
    addExitProc(GC_fullCollect)
    onSignal(SIGINT, SIGTERM):
        quit("Terminating Server ...", QuitSuccess)

    let cfg = getConfig()

    echo &"Starting Compleet at {getUrlPrefix(cfg)}"

    startRouter(cfg)

when isMainModule:
    main()
