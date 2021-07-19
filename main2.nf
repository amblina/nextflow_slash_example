#!/usr/bin/env nextflow
nextflow.enable.dsl = 2

params.example = "my_example_file.txt"
params.out_dir = "output"

process run_test {
    label "ubuntu20"
    input:
        path example_path
    output:
        path "example.log"
    shell:
        """
        test.sh !{example_path}
        echo `which test.sh`
        echo ' --------------------'
        echo '| cat the files..    |'
        echo ' --------------------'
        cat `which test.sh` > example.log
        exit 1
        """

}

// See https://github.com/nextflow-io/nextflow/issues/1636
// This is the only way to publish files from a workflow whilst
// decoupling the publish from the process steps.
process output {
    // publish inputs to output directory
    label "clair3"
    publishDir "${params.out_dir}", mode: 'copy', pattern: "*"
    input:
        file fname
    output:
        file fname
    """
    echo "Writing output files"
    """
}



// workflow module
workflow pipeline {
    take:
        example_path
    main:
        test_output = run_test(example_path)
    emit:
        test_output
}

// entrypoint workflow
workflow {
    example = channel.fromPath(params.example, checkIfExists:true)
    out = pipeline(example)
    output(out)
}
