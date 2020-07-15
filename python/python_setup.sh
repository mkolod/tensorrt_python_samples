#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
pip install 'tensorflow<2.0'
find /opt/tensorrt/samples -name requirements.txt -print0 | xargs -0 -n1 pip install -r
dpkg -i ${SCRIPT_DIR}/*-tf_*.deb

UFF_PATH="$(python -c 'import uff; print(uff.__path__[0])')"
chmod +x ${UFF_PATH}/bin/convert_to_uff.py
ln -sf ${UFF_PATH}/bin/convert_to_uff.py /usr/local/bin/convert-to-uff
