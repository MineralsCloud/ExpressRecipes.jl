using ExpressRecipes
using Documenter

DocMeta.setdocmeta!(ExpressRecipes, :DocTestSetup, :(using ExpressRecipes); recursive=true)

makedocs(;
    modules=[ExpressRecipes],
    authors="singularitti <singularitti@outlook.com> and contributors",
    repo="https://github.com/MineralsCloud/ExpressRecipes.jl/blob/{commit}{path}#{line}",
    sitename="ExpressRecipes.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MineralsCloud.github.io/ExpressRecipes.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MineralsCloud/ExpressRecipes.jl",
    devbranch="main",
)
