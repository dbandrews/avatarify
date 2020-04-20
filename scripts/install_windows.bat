call scripts/settings_windows.bat

call conda create -y -n %CONDA_ENV_NAME% python=3.7
call conda activate %CONDA_ENV_NAME%

call conda install -y pytorch==1.2.0 torchvision==0.4.0 cudatoolkit=10.0 -c pytorch
call conda install -y -c 1adrianb face_alignment

REM ###FOMM###
call git submodule update --init
call pip install -r fomm/requirements.txt
call pip install requests
