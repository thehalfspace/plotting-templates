
# Using pgfplots (latex-based plotting: slow but beautiful)
# Opens plots in inkscape (XQuartz). 

# install these before proceeding
# 1. ]add PGFPlots (in julia REPL)
# 2. brew install pdf2svg (or get binaries from github for linux/windows)
# 3. Install PGFPlots from latex (Usually already installed as a part of MacTex)

using Plots

gr()    # for quick visualization
#  pgfplots()    # for publication quality

# data
x = sort(rand(1000))
y = x.^2

plot(x, y, label=:"Line", framestyle=[:box :grid])
scatter!(x, y, label="Scattered Data",legend=:topleft,
         markersize=10, markercolor=:deepskyblue, 
         markerstrokewidth=0, markeralpha=0.9)
xaxis!("X-label"); xlims!(0,1); xticks!(-1:0.2:1)
yaxis!("Y-label"); ylims!(0,1); yticks!(0:0.1:1)
gui()
savefig("examples/test01.pdf")
