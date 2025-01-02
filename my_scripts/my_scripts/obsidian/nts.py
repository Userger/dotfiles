import os
import datetime
from pathlib import Path

home_path = Path(os.getenv("HOME", "/home/yegor"))
obsidian_path = home_path / "obsidian/global"
main_note = obsidian_path / "main.md"

with open(main_note, "r") as notes:
    lines = notes.readlines()
    daily_line = ""
    daily_index = None
    for index, line in enumerate(lines):
        if line.endswith("daily\n"):
            daily_line = (
                f"- [[{datetime.datetime.today().strftime('%Y-%m-%d')}]] - daily\n"
            )
            daily_index = index
            break
    if daily_index:
        lines[daily_index] = daily_line

    text = "".join(lines)
    with open(main_note, "w") as notes:
        notes.write(text)
