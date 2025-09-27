import sys
import os
import json
from PySide6.QtWidgets import QApplication

from app import WallpaperApp


CONFIG_PATH = os.path.expanduser("~/wallpaper-select-beta/src/config.json")


def main():
    pywal_enabled = "--pywal" in sys.argv

    app = QApplication(sys.argv)

    if not os.path.exists(CONFIG_PATH):
        default_config = {
            "wallpaper_dir": os.path.expanduser("~/Pictures"),
            "wallpaper_command": "swaybg -i {path}",
            "thumbnail_size": 180,
       }
        try:
            with open(CONFIG_PATH, "w") as f:
                json.dump(default_config, f, indent=2)
            print(f"Created default config at {CONFIG_PATH}")
            print("Edit the config file to set your wallpaper directory and command")
        except Exception as e:
            print(f"Could not create config file: {e}")

    window = WallpaperApp(CONFIG_PATH, pywal_enabled=pywal_enabled)
    window.show()

    sys.exit(app.exec())


if __name__ == "__main__":
    main()
