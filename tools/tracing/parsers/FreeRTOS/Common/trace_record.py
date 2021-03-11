# Copyright 2020-2021 XMOS LIMITED.
# This Software is subject to the terms of the XMOS Public Licence: Version 1.


class record:
    def __init__(self, payload, len, time):
        self.Payload = payload
        self.Len = len
        self.Time = time

    def __str__(self):
        return self.Time + " " + self.Len + " " + self.Payload
