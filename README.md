# Sdl3NimGen
Generator for an sdl3 wrapper for nim using Futhark

# Current SDL3 version - 3.1.6
SDL3 is still in pre-release so the submodule is manually tracking the newest SDL3 pre-release tag. Make sure the submodule is pulled and you are on the correct tag for your desired version.

# How To
generate.nim is a short script to tell Futhark how to generate the wrapper. Compiling that file will produce the desired wrapper in:
```
/wrapper/sdl3.nim
``` 

## SDL3 dynamic lib must be available
If SDL3 is in your path:
```
nim c -r --maxLoopIterationsVM: 100000000000000 generate.nim 
```

If SDL3 is NOT in your path:
```
nim c -r --maxLoopIterationsVM: 100000000000000 generate.nim 
```
