module NCLColors

using Colors
using Serialization: serialize, deserialize

project_path(f...) = normpath(joinpath(@__DIR__, "..", f...))
load(f) = deserialize(project_path(f))

export colors_group, colors
export parse_color

# parse_color(cols::AbstractVector{String}) = [parse(Colorant, col) for col in cols]

@time colors = load("data/ncl_colors")
@time colors_group = load("data/ncl_colors_group")

end # module NCLColors
