module MIToS_Scripts

using Dates
using Pkg
using ArgParse
using CodecZlib
using Reexport

using MIToS.Utils # to use read_file

@reexport using MIToS
@reexport using Distributed

export run_single_script,
    script,
    open_output,
    close_output,
    readorparse,
    loadedversion,
    parse_commandline,
    set_parallel,
    runscript

include("Scripts.jl")
end
