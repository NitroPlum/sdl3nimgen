import futhark, strutils, os

# {.passL: "./SDL3/SDL3.dll"}

if not existsDir("./wrapper"):
  createDir("./wrapper")

importc:
    outputPath "./wrapper/sdl3.nim"
    path "./submodules/SDL/include"
    "SDL3/SDL.h"
    renameCallback proc(n, k: string, p = ""): string = n.replace "SDL_", ""