

ch = Channel.of( 0..10000 )
some_file = file(params.file)

process do_stuff{
    //echo true
    input:
        set val(x) from ch
        path some_file from some_file

    script:
    """
        echo $x
        md5sum $some_file
        sleep 60
    """
}