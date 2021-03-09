# Minimal example of crashing AWS S3 while checking for input

## Problem description

When an external file is staged in nextflow process, existence of the input file gets checked for every task instance. For the large number of task instances, nextflow issues many requests to AWS S3 bucket, which ultimately leasds to the following error:

```
  Please reduce your request rate. (Service: Amazon S3; Status Code: 503; Error Code: SlowDown; Request ID: EB58BF945DDF4660; S3 Extended Request ID: Vub3cSKNwSW1JC2q8fTjo0p6O+njNr0LCJO1a0qE4B872XEBw4ugQoZ9J/mPeweYGz0Z8qSrhEM=)
```

This behavior depends of maxForks parameter in nextflow.config

## How to run

```
nextflow run main.nf -profile aws --file somefile.txt
```
