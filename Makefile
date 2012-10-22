# Copyright (C) 2012 Sochi Team
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

CORE_ROOT := ../core

default: all

include $(CORE_ROOT)/build/defs.mk
include $(CORE_ROOT)/build/clear.mk

TARGET_NAME := test
TARGET_SRC := src/main.cpp
TARGET_TYPE := binary
TARGET_BUILD := true

include $(CORE_ROOT)/build/target.mk

# Targets
all: $(ALL_TARGETS)
clean: $(addprefix clean-,$(ALL_TARGETS))
