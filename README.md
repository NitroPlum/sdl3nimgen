# Sdl3NimGen
Generator for an sdl3 wrapper for nim using Futhark

# Current SDL3 version - 3.1.6
SDL3 is still in pre-release so the submodule is manually tracking the newest SDL3 tag. Make sure to pull the code for this tag by doing: 
```
git submodule update --remote --no-fetch
```

# How To
generate.nim is a short script to tell Futhark how to generate the wrapper. Compiling that file will produce the desired wrapper in:
```
/wrapper/sdl3.nim
``` 

simply run:
```
nim gen
```