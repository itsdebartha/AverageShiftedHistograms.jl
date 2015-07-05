module AverageShiftedHistograms
    using Compat
    using Reexport
    @reexport using StatsBase
    import Docile
    Docile.@document

    import SmoothingKernels: kernels
    import Base: quantile, merge, merge!, copy, mean, var, std, quantile, push!
    import TextPlots
    import StatsBase: fit, nobs, WeightVec

    export Bin1, Bin2, UnivariateASH, ash!, nout, update!

    const kernellist = [
        :uniform,
        :triangular,
        :epanechnikov,
        :biweight,
        :triweight,
        :tricube,
        :gaussian,
        :cosine,
        :logistic
        ]

    include("univariate.jl")
    include("bivariate.jl")
end
