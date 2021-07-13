/*
   Copyright (c) 2020, The LineageOS Project

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>

#include <android-base/file.h>
#include <android-base/logging.h>
#include <android-base/properties.h>
#include <android-base/strings.h>

#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"
#include "property_service.h"

using android::base::ReadFileToString;
using android::base::Trim;
using std::string;

std::vector<std::string> ro_props_default_source_order = {
    "",
    "odm.",
    "product.",
    "system.",
    "system_ext.",
    "vendor.",
};

void property_override(char const prop[], char const value[], bool add = true) {
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else if (add)
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void set_ro_build_prop(const std::string &prop, const std::string &value, bool product = true) {
    string prop_name;

    for (const auto &source : ro_props_default_source_order) {
        if (product)
            prop_name = "ro.product." + source + prop;
        else
            prop_name = "ro." + source + "build." + prop;

        property_override(prop_name.c_str(), value.c_str());
    }
}

void vendor_load_properties() {
    char const *operator_file = "/proc/oppoVersion/operatorName";
    string operator_name;
    string device;
    string model;

    if (ReadFileToString(operator_file, &operator_name)) {
        // realme 6
        if (Trim(operator_name) == "101" || Trim(operator_name) == "102"
               || Trim(operator_name) == "104" || Trim(operator_name) == "105") {
            device = "RMX2001L1";
            model = "RMX2001";
        }
        else if (Trim(operator_name) == "106") {
            device = "RMX2003L1";
            model = "RMX2003";
        }
        else if (Trim(operator_name) == "113") {
            device = "RMX2005L1";
            model = "RMX2005";
        }
        // realme 6i/6s/Narzo
        else if (Trim(operator_name) == "111" || Trim(operator_name) == "112"
               || Trim(operator_name) == "114") {
            device = "RMX2002L1";
            model = "RMX2002";
        }
        // realme 7
        else if (Trim(operator_name) == "140" || Trim(operator_name) == "141"
               || Trim(operator_name) == "146" || Trim(operator_name) == "149") {
            device = "RMX2151L1";
            model = "RMX2151";
        }
        else if (Trim(operator_name) == "142") {
            device = "RMX2153L1";
            model = "RMX2153";
        }
        else if (Trim(operator_name) == "94" || Trim(operator_name) == "148") {
            device = "RMX2155L1";
            model = "RMX2155";
        }
        // realme Narzo 30 4G
        else if (Trim(operator_name) == "90" || Trim(operator_name) == "92") {
            device = "RMX2156L1";
            model = "RMX2156";
        }
        // realme Narzo 20 Pro
        else if (Trim(operator_name) == "143") {
            device = "RMX2161L1";
            model = "RMX2161";
            property_override("ro.power_profile", "RMX2161");
        }
        else if (Trim(operator_name) == "147" || Trim(operator_name) == "145") {
            device = "RMX2163L1";
            model = "RMX2163";
            property_override("ro.power_profile", "RMX2161");
        }
    }
    else {
        LOG(ERROR) << "Unable to read operator from " << operator_file;
    }

    set_ro_build_prop("device", device);
    set_ro_build_prop("model", model);
    set_ro_build_prop("name", model);
    set_ro_build_prop("product", model, false);
}
