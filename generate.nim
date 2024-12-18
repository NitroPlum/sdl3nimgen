import futhark, strutils, os, sequtils

proc toCamelCase(input: string): string =
    if input.len() > 0:
        return toLowerAscii(input[0]) & input[1..^1]
    else:
        return input

# input: original string
# identifier: what kind of identifier are we renaming
# partof: limit this rule to a specific object or proc
# These rules are mentioned here: 
# https://github.com/PMunch/futhark?tab=readme-ov-file#hard-names-and-overrides
proc renameCb(input, identifier: string, partof = ""): string = 
    result = input.replace("SDL_","")
    if identifier == "proc": 
        result = toCamelCase(result)

importc:
    renameCallback renameCb
    outputPath "./wrapper/sdl3.nim"
    path "./submodules/SDL/include"
    "SDL3/SDL.h"