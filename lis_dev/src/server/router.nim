###############################################################
#
# Copyright (c) Tom Schäpsmeier
#
# Description: Declares all custom types that can be used
#
###############################################################

import jester
import ./types

proc startRouter*(cfg: Config) =
    settings:
        port = Port(cfg.server_port)
        bindAddr = cfg.server_address
        reusePort = true
    
    routes:
        get "/":
            resp "Hello world";