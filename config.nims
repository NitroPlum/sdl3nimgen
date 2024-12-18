when defined(nimsuggest): import nimscript

task gen, "Generate Wrapper":
  mkdir("./wrapper")
  selfExec("c -r --maxLoopIterationsVM: 100000000000000 generate.nim")