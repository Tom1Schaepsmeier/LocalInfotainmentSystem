###############################################################
#
# Copyright (c) Tom Schäpsmeier
#
# Description: Declares all custom types that can be used
#
###############################################################

import std/[strutils, envvars, macros]
import ./types

proc parseEnv[T](key: string; default: T): T =
  let val = getEnv(key.toUpperAscii(), $default)

  putEnv(key.toUpperAscii(), val)
  when T is int: parseInt(val)
  elif T is bool: parseBool(val)
  elif T is string: val

macro eval(value: static[string]): untyped =
  result = parseStmt(value)

proc getConfig*(): Config =
  result = Config()
  for key, default in result.fieldPairs:
    eval("result."&key) = parseEnv(key, default)
