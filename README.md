


**Run CODENN**

See details of CODENN in our paper

Summarizing Source Code using a Neural Attention Model (https://github.com/sriniiyer/codenn/blob/master/summarizing_source_code.pdf)

Requirements

* Torch (http://torch.ch/docs/getting-started.html)
* Cutorch
* antlr4 for parsing C# (pip install antlr4-python2-runtime)

Setup environment


`export CODENN_DIR=<PATH TO CODENN DIR>`

`export PYTHONPATH=${CODENN_DIR}/src/:${CODENN_DIR}/src/sqlparse`

`export CODENN_WORK=./workdir`

Build both csharp and sql datasets

Install modified sqlparse

`cd src/sqlparse/`
`sudo python setup.py install`

Specify `BATCH_SIZE`, `MAX_CODE_LENGTH` and `MAX_NL_LENGTH` in `buildData.sh` and `run.sh`.

Build datasets

`cd src/model`
`./buildData.sh`

Train codenn models and predict on test set

`./run.sh {sql|csharp|python}`
