input:
```
nextflow main2.nf -c nextflow_example.config
```
output:
```
N E X T F L O W  ~  version 20.10.0
Launching `main2.nf` [modest_shaw] - revision: 34ffe589a7
executor >  local (1)
[ef/94b684] process > pipeline:run_test (1) [  0%] 0 of 1
[-        ] process > output                -
Error executing process > 'pipeline:run_test (1)'
executor >  local (1)
[ef/94b684] process > pipeline:run_test (1) [100%] 1 of 1, failed: 1 ✘
[-        ] process > output                -
Error executing process > 'pipeline:run_test (1)'

Caused by:
  Process `pipeline:run_test (1)` terminated with an error exit status (1)

Command executed:

  test.sh my_example_file.txt
  echo `which test.sh`
  echo ' --------------------'
  echo '| cat the files..    |'
  echo ' --------------------'
  cat `which test.sh`
  cat `which test.sh` > example.log
  exit 1

Command exit status:
  1

Command output:
  cwd: /Users/awright/docker/2107/wf-example/work/ef/94b684b030af7b23891564224a5087
  BAM_WITH_SLASH: my_example_file.txt
  BAM_WITH_DASH: /Users/awright/docker/2107/wf-example/work/ef/94b684b030af7b23891564224a5087-my_example_file.txt
  /Users/awright/docker/2107/wf-example/bin/test.sh
   --------------------
  | cat the files..    |
   --------------------
  bam=$1
  cwd="$(pwd)"
  echo "cwd: $cwd"
  BAM_WITH_SLASH="${cwd}/${bam}"
  echo "BAM_WITH_SLASH: $BAM_WITH_SLASH"
  BAM_WITH_DASH="${cwd}-${bam}"
  echo "BAM_WITH_DASH: $BAM_WITH_DASH"

Command wrapper:
  cwd: /Users/awright/docker/2107/wf-example/work/ef/94b684b030af7b23891564224a5087
  BAM_WITH_SLASH: my_example_file.txt
  BAM_WITH_DASH: /Users/awright/docker/2107/wf-example/work/ef/94b684b030af7b23891564224a5087-my_example_file.txt
  /Users/awright/docker/2107/wf-example/bin/test.sh
   --------------------
  | cat the files..    |
   --------------------
  bam=$1
  cwd="$(pwd)"
  echo "cwd: $cwd"
  BAM_WITH_SLASH="${cwd}/${bam}"
  echo "BAM_WITH_SLASH: $BAM_WITH_SLASH"
  BAM_WITH_DASH="${cwd}-${bam}"
  echo "BAM_WITH_DASH: $BAM_WITH_DASH"

Work dir:
  /Users/awright/docker/2107/wf-example/work/ef/94b684b030af7b23891564224a5087

Tip: view the complete command output by changing to the process work dir and entering the command `cat .command.out`
WARN: To render the execution DAG in the required format it is required to install Graphviz -- See http://www.graphviz.org for more info.

(base) awright-mac:wf-example awright$

```