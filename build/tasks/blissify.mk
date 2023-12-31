# Copyright (C) 2016-2018 The ApolloOS Project
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

# Apollo Target Zip
APOLLO_TARGET_PACKAGE := $(PRODUCT_OUT)/$(APOLLO_BUILD_ZIP).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: apolloify
apolloify: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(APOLLO_TARGET_PACKAGE)
	$(hide) $(SHA256) $(APOLLO_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(APOLLO_TARGET_PACKAGE).sha256
	@echo -e ${CL_CYN}""${CL_CYN}
	@echo -e ${CL_CYN}"     _    ____   ___  _     _     ___   "${CL_CYN}
	@echo -e ${CL_CYN}"    / \  |  _ \ / _ \| |   | |   / _ \  "${CL_CYN}
	@echo -e ${CL_CYN}"   / _ \ | |_) | | | | |   | |  | | | | "${CL_CYN}
	@echo -e ${CL_CYN}"  / ___ \|  __/| |_| | |___| |__| |_| | "${CL_CYN}
	@echo -e ${CL_CYN}" /_/   \_\_|    \___/|_____|_____\___/  "${CL_CYN}
	@echo -e ${CL_CYN}""${CL_CYN}
	@echo -e ${CL_CYN}"===========-Apollo Package Complete-==========="${CL_RST}
	@echo -e ${CL_CYN}"Zip: "${CL_MAG} $(APOLLO_TARGET_PACKAGE)${CL_RST}
	@echo -e ${CL_CYN}"SHA256: "${CL_MAG}" `cat $(APOLLO_TARGET_PACKAGE).sha256 | cut -d ' ' -f 1`"${CL_RST}
	@echo -e ${CL_CYN}"Size:"${CL_MAG}" `ls -lah $(APOLLO_TARGET_PACKAGE) | cut -d ' ' -f 5`"${CL_RST}
	@echo -e ${CL_CYN}"==============================================="${CL_RST}
	@echo -e ${CL_CYN}"Have A Truly Uplifted Experience"${CL_RST}
	@echo -e ${CL_CYN}"==============================================="${CL_RST}
	@echo -e ""
