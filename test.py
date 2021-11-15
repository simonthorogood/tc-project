import numpy as np
from tc_core.utils import get_array

print(np.concatenate([get_array((2, 2), 1), get_array((2, 2), 2)]))