# Copyright 2020-2021 XMOS LIMITED.
# This Software is subject to the terms of the XMOS Public Licence: Version 1.


class InterpreterError(Exception):
    pass


class AllocateTensorsError(InterpreterError):
    pass


class InvokeError(InterpreterError):
    pass


class SetTensorError(InterpreterError):
    pass


class GetTensorError(InterpreterError):
    pass


class ModelSizeError(InterpreterError):
    pass


class ArenaSizeError(InterpreterError):
    pass

