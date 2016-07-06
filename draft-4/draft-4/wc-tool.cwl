#!/usr/bin/env cwl-runner

class: CommandLineTool
cwlVersion: cwl:v1.0.dev4

inputs:
  file1: File

outputs:
  output:
    type: File
    outputBinding: { glob: output }

baseCommand: [wc]

stdin: $(inputs.file1.path)
stdout: output
