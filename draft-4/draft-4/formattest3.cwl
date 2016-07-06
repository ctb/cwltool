$namespaces:
  edam: http://edamontology.org/
  gx: http://galaxyproject.org/formats/
$schemas:
  - EDAM.owl
  - gx_edam.ttl
class: CommandLineTool
cwlVersion: cwl:v1.0.dev4
description: "Reverse each line using the `rev` command"

inputs:
  input:
    type: File
    inputBinding: {}
    format: gx:fasta

outputs:
  output:
    type: File
    outputBinding:
      glob: output.txt
    format: $(inputs.input.format)

baseCommand: rev
stdout: output.txt
