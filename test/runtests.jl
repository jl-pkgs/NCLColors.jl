using Test
using NCLColors


# length(colors) == 305
@testset "colors" begin
  @test length(colors.amwg256) == 254
end
