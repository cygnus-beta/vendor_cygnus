# Copyright (C) 2020 Cygnus
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# Cygnus OTA update package

CYGNUS_TARGET_ZIP := $(PACKAGE_VERSION).zip

.PHONY: cygnus
cygnus: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(CYGNUS_TARGET_ZIP)
	$(hide)  $(CYGNUS_TARGET_ZIP) | sed "s|$(PRODUCT_OUT)/||" > $(CYGNUS_TARGET_ZIP).md5sum
	@echo "Package Complete: $(CYGNUS_TARGET_ZIP)" >&2
	@echo -e ${CL_RED}""${CL_RED}
	@echo -e ${CL_RED}" ▄████▄▓██   ██▓  ▄████  ███▄    █  █    ██   ██████ "${CL_RED}
	@echo -e ${CL_RED}"▒██▀ ▀█ ▒██  ██▒ ██▒ ▀█▒ ██ ▀█   █  ██  ▓██▒▒██    ▒ "${CL_RED}
	@echo -e ${CL_RED}"▒▓█    ▄ ▒██ ██░▒██░▄▄▄░▓██  ▀█ ██▒▓██  ▒██░░ ▓██▄   "${CL_RED}
	@echo -e ${CL_RED}"▒▓▓▄ ▄██▒░ ▐██▓░░▓█  ██▓▓██▒  ▐▌██▒▓▓█  ░██░  ▒   ██▒"${CL_RED}
	@echo -e ${CL_RED}"▒ ▓███▀ ░░ ██▒▓░░▒▓███▀▒▒██░   ▓██░▒▒█████▓ ▒██████▒▒"${CL_RED}
	@echo -e ${CL_RED}"░ ░▒ ▒  ░ ██▒▒▒  ░▒   ▒ ░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░"${CL_RED}
	@echo -e ${CL_RED}"  ░  ▒  ▓██ ░▒░   ░   ░ ░ ░░   ░ ▒░░░▒░ ░ ░ ░ ░▒  ░ ░"${CL_RED}
	@echo -e ${CL_RED}"░       ▒ ▒ ░░  ░ ░   ░    ░   ░ ░  ░░░ ░ ░ ░  ░  ░  "${CL_RED}
	@echo -e ${CL_RED}"░ ░     ░ ░           ░          ░    ░           ░  "${CL_RED}
	@echo -e ${CL_RED}"░       ░ ░                                          "${CL_RED}
	@echo -e ${CL_RED}""${CL_RED}
