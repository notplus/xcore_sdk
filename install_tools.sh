#!/bin/bash
set -e

AI_TOOLS_DIR=${XMOS_AIOT_SDK_PATH}/tools/ai_tools

echo "****************************"
echo "* Building libtflite2xcore *"
echo "****************************"
LIB_FLEXBUFFERS_DIR=${AI_TOOLS_DIR}/utils/lib_flexbuffers
(cd ${LIB_FLEXBUFFERS_DIR}; rm -rf build) 
(cd ${LIB_FLEXBUFFERS_DIR}; mkdir -p build) 
(cd ${LIB_FLEXBUFFERS_DIR}/build; cmake ../ ; make install) 

echo "*******************************"
echo "* Building xcore_interpreters *"
echo "******************************"
XCORE_INTERPRETERS_DIR=${AI_TOOLS_DIR}/xcore_interpreters/python_bindings
(cd ${XCORE_INTERPRETERS_DIR}; rm -rf build) 
(cd ${XCORE_INTERPRETERS_DIR}; mkdir -p build) 
(cd ${XCORE_INTERPRETERS_DIR}/build; cmake ../ ; make install) 

echo "**********************************"
echo "* Installing Python requirements *"
echo "**********************************"
(pip install -r requirements.txt)
