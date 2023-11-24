python
from openvino.runtime import Core
ie = Core()
print(ie.available_devices)
