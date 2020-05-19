#!/bin/bash
#
# Copyright (C) 2020 SebaUbuntu's Telegram Bash Bot
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Source basic functions
source base/get.sh
source base/send.sh
source base/admin.sh
source base/modules_loader.sh

import_modules

if echo "$AVAILABLE_COMMANDS" | grep -q "$(get_message_text "$@")"; then
	module_"$(get_message_text "$@")" "$@"
else
	send_message "$(get_chat_id "$@")" "hi"
fi
