module TestMicroCollections
using Test

module ProjectQuality
    using Aqua
    using Test
    import MicroCollections
    @testset "project quality" begin
        Aqua.test_all(MicroCollections, ambiguities=false)
    end
end

@testset "$file" for file in sort([
    file for file in readdir(@__DIR__) if match(r"^test_.*\.jl$", file) !== nothing
])
    include(file)
end

end  # module
