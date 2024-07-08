module MIToS_Scripts

using Pkg
using CodecZlib
using Reexport

@reexport using MIToS
@reexport using MIToS.Utils # to use read_file, get_n_words, check_file
@reexport using Dates
@reexport using Distributed
@reexport using ProgressMeter
@reexport using ArgParse
@reexport using DelimitedFiles

export run_single_script,
    script,
    open_output,
    close_output,
    readorparse,
    loadedversion,
    parse_commandline,
    set_parallel,
    runscript,
    set_project_env

include("Scripts.jl")
end
