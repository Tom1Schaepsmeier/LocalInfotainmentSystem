###############################################################
#
# Copyright (c) Tom Schäpsmeier
#
# Description: contains all functions to parse a json file
#
###############################################################

import json

proc readJsonFile*(filename: string): JsonNode = 
    ##[
        Reads a givn json file

        params:
            filename: string - the path to the specified file
        result:
            a JsonNode object which contains all data
    ]##

    let file = open(filename)
    result = parseJson(file.readAll)
    file.close()
