using LandDataTools
using Documenter

DocMeta.setdocmeta!(LandDataTools, :DocTestSetup, :(using LandDataTools); recursive=true)

makedocs(;
    modules=[LandDataTools],
    authors="Alexandre A. Renchon et al.",
    repo="https://github.com/AlexisRenchon/LandDataTools.jl/blob/{commit}{path}#{line}",
    sitename="LandDataTools.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://AlexisRenchon.github.io/LandDataTools.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/AlexisRenchon/LandDataTools.jl",
    devbranch="main",
)
