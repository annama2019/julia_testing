using DataFrames, RDatasets, FixedEffectModels, RegressionTables
df = dataset("plm", "Cigar")
r1 = reg(df, @formula(Sales ~ NDI + fe(State) + fe(Year)), Vcov.cluster(:State), weights = :Pop)
regtable(r1; renderSettings = asciiOutput())
