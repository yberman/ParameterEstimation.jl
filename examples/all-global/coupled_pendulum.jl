using ParameterEstimation
using ModelingToolkit, DifferentialEquations
solver = Tsit5()

@parameters alpha
@variables t theta_1(t) theta_1_dot(t) theta_2(t) theta_2_dot(t) y1(t) y2(t)
D = Differential(t)

#coupled pendulum equations
states = [theta_1, theta_1_dot, theta_2, theta_2_dot]
parameters = [alpha]
@named model = ODESystem([
                             D(theta_1) ~ theta_1_dot,
                             D(theta_1_dot) ~ -theta_1 * (alpha + 1) + alpha * theta_2,
                             D(theta_2) ~ theta_2_dot,
                             D(theta_2_dot) ~ alpha * theta_1 - theta_2 * (alpha + 1),
                         ], t, states, parameters)

#initial conditions
ic = [1.0, 0.0, 0.0, -1.0]
p_true = [1.0]
time_interval = [0.0, 10.0]
datasize = 32

v = randn(datasize)
v = sort((v .- minimum(v)) / (maximum(v) - minimum(v))) * time_interval[2]

measured_quantities = [y1 ~ theta_1, y2 ~ theta_2 + theta_1]
data_sample = Dict{Any, Any}("t" => v)
data_sample = ParameterEstimation.sample_data(model, measured_quantities, time_interval,
                                              p_true, ic, datasize; solver = solver,
                                              uneven_sampling = true,
                                              uneven_sampling_times = data_sample["t"])

res = ParameterEstimation.estimate(model, measured_quantities, data_sample;
                                   solver = solver)
