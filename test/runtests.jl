using MIToS_Scripts
using MIToS.MSA, MIToS.PDB, MIToS.Utils, MIToS.Information
using Test
using Aqua
using JET

@testset verbose = true "MIToS_Scripts.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        # The ambiguities and undefined_exports are not caused by MIToS_Scripts
        Aqua.test_all(MIToS_Scripts, ambiguities = false, undefined_exports = false)
    end
    
    @testset "Code linting (JET.jl)" begin
        JET.test_package(MIToS_Scripts; target_defined_modules = true)
    end

    # Scripts
    @testset verbose = true "Scripts" begin
        include("Scripts/Template.jl")
        include("Scripts/Scripts.jl")
    end
end



