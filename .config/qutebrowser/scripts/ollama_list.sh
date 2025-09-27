#!/bin/bash

# Get ollama models and show in fuzzel dmenu
ollama list | awk '{print $1}' | tail -n +2 | fuzzel --dmenu