###############################################################
#
# Copyright (c) Tom Schäpsmeier
#
# Description 
#
###############################################################

import server/types

proc getUrlPrefix*(cfg: Config): string =
  if cfg.server_useHttps: "https://" & cfg.server_hostname
  else: "http://" & cfg.server_hostname
