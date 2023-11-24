python3 -m venv openvino_env
source openvino_env/bin/activate

python -m pip install --upgrade pip

pip install openvino-dev[tensorflow2,onnx,caffe,pytorch]==2022.3.1

mo -h

#OpenVINO NOTEBOOKS
source openvino_env/bin/activate

git clone --branch=2022.3 --depth=1 https://github.com/openvinotoolkit/openvino_notebooks.git


#Manually

# Since the NOTEBOOKS correspond to version 2.3.0, to prevent uninstalling  OpenVINO's version 2.3.1, open the text file requirements.txt and change the first lines for:
# cd openvino_notebooks

# openvino-dev>=2022.3.0
# openvino-telemetry>=2022.3.0

# Now, execute the following command from the directory ..../openvino_notebooks to install the Jupyter server and the associated dependencies:
# python -m pip install --upgrade pip wheel setuptools
# pip install -r requirements.txt

# Finally
# jupyter lab notebooks

# Download OPEN ZOO models
 git clone --branch=releases/2022/3 --depth=1 https://github.com/openvinotoolkit/open_model_zoo

