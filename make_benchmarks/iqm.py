"""
iqm.py

Run IQM on a given model.



    1. Given a a model. Render a template that produces the matlab file for IQM.
    2. Create a tempdir with the 
 


"""


import os
from jinja2 import Environment, FileSystemLoader


def load_template():
    # need a better way to produce the template path
    template_path = os.path.join(
        os.getenv("HOME"),
        "Desktop",
        "ParameterEstimation.jl",
        "make_benchmarks",
        "templates",
    )
    env = Environment(loader=FileSystemLoader(template_path), autoescape=False)
    return env.get_template("iqm.m.jinja2")


template_data = {
    "global_params": [
        {
            "name": "a",
            "min_value": 0.0,
            "max_value": 1.5,
        },
        {
            "name": "b",
            "min_value": 0.0,
            "max_value": 1.5,
        },
    ],
    "initial_conditions": [
        {
            "name": "x1",
            "min_value": 0.0,
            "max_value": 1.5,
        },
        {
            "name": "x2",
            "min_value": 0.0,
            "max_value": 1.5,
        },
    ]
}

iqm_template = load_template()
print(iqm_template.render(**template_data))
