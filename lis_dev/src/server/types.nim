###############################################################
#
# Copyright (c) Tom Schäpsmeier
#
# Description: Declares all custom types that can be used
#
###############################################################

type
    Config* = object
        server_hostname*: string = "lis.org"
        server_title*: string = "LIS"
        server_address*: string = "0.0.0.0"
        server_port*: int = 2112
        server_useHttps*: bool = true
        server_httpMaxConns*: int = 10
        