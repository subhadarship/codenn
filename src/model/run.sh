#!/bin/bash

LANGUAGE=$1
GPUIDX=1
BEAMSIZE=10

MAX_CODE_LENGTH=100
MAX_NL_LENGTH=100
BATCH_SIZE=100

# Run Training
th main.lua -dev_ref_file $CODENN_DIR/data/stackoverflow/${LANGUAGE}/dev/ref.txt -gpuidx $GPUIDX -language $1

# Run prediction
th predict.lua -encoder ${CODENN_WORK}/${LANGUAGE}.encoder -decoder ${CODENN_WORK}/${LANGUAGE}.decoder -beamsize $BEAMSIZE -gpuidx $GPUIDX -language ${LANGUAGE} \
  -batch_size $BATCH_SIZE -max_code_length $MAX_CODE_LENGTH -max_nl_length $MAX_NL_LENGTH
