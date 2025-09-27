#!/bin/bash

link=http://localhost:3000

cd /home/denis/OpenWebUI
. venv/bin/activate
open-webui serve
qutebrowser ":open $link"