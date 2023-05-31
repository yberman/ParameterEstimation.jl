"""
iqm.py

Run IQM on a given model.



    1. Given a a model. Render a template that produces the matlab file for IQM.
    2. Create a tempdir with the 
 


"""

import sys

from pathlib import Path
import subprocess
import tempfile
import os
from jinja2 import Environment, FileSystemLoader


def load_templates():
    # need a better way to produce the template path
    template_path = (
        Path.home()
        / "Desktop"
        / "ParameterEstimation.jl"
        / "make_benchmarks"
        / "templates"
    )
    env = Environment(loader=FileSystemLoader(template_path), autoescape=False)
    return {
        "matlab": env.get_template("iqm.m.jinja2"),
        "matlab": env.get_template("iqm.m.jinja2"),
    } 


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
    ],
}


csv_file = "models"

iqm_template = load_template()
old_pwd = os.getcwd()
print(old_pwd)
with tempfile.TemporaryDirectory() as proj_root_directory:
    with open("iqm_settings.m", "w") as matlab_file:
        matlab_file.write(iqm_template.render(**template_data))
    os.makedirs(Path(proj_root_directory) / "project" / "experiments")
    os.makedirs(Path(proj_root_directory) / "project" / "experiments" / "points_20")
    os.makedirs(Path(proj_root_directory) / "project" / "models")
    print(proj_root_directory)
    matlab_cmd = "run iqm_settings.m; exit"
    subprocess.run(
        ["matlab", "-nodisplay", "-nosplash", "-nodesktop", "-r", matlab_cmd],
        cwd=proj_root_directory,
        stdout=sys.stdout,
    )
