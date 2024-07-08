using MIToS_Scripts
using Test
using Aqua
using JET

@testset "MIToS_Scripts.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(MIToS_Scripts)
    end
    @testset "Code linting (JET.jl)" begin
        JET.test_package(MIToS_Scripts; target_defined_modules = true)
    end
    # Write your tests here.
end
