#!/usr/bin/env python

import os
import sys
import numpy as np

FILENAME = sys.argv[1]

data = np.load(FILENAME)

x = data['x']

noise = 0.1
x += np.random.normal(loc=0, scale=noise, size=x.shape)

print("Saving to: " + os.path.splitext(FILENAME)[0] + "_noise" + str(noise) + ".npz")
np.savez(os.path.splitext(FILENAME)[0] + "_noise" + str(noise) + ".npz", x=x, params=data['params'])
