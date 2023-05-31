# Benchmark generator Installation

```bash
# if not installed
sudo apt install python3-venv
# create and activate a venv to avoid installing things globally. This is a standard python practice
python3 -m venv venv --prompt "PE-benchmark-venv"
. venv/bin/activate
# install packages locally
python3 -m pip install -r requirements.txt
```
