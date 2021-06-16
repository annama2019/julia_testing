using CSV
using DataFrames
df = DataFrame(Name = ["Jon","Bill","Maria","Julia","Mark"], 
               Age = [22,43,81,52,27],
               Salary = [30000,45000,60000,50000,55000]
               )

root_path = ARGS[1]

CSV.write("$(root_path)\\export_df.csv", df) 
