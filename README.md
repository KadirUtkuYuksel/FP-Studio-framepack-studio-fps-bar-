## FPS Feature Files Toolkit

Modern, scriptable utilities for generating and applying FPS-related features to media assets. This toolkit provides Python scripts and Windows batch helpers to create, transform, and restore feature files for both images and videos.

### Key Features
- **Modular generators**: Separate generators for base/original, F1-style, and video-specific outputs
- **Non-destructive workflow**: Backup/restore helpers to keep your originals safe
- **Batch-friendly on Windows**: One-click `.bat` scripts to apply or revert changes
- **Composable architecture**: Clear interfaces and worker orchestration for extension

### Project Structure
```text
apply_fps_features.bat   # Windows helper to run the pipeline end-to-end
restore_backup.bat       # Windows helper to restore backups

base_generator.py        # Common utilities and/or base generator logic
original_generator.py    # Generator for baseline/original feature sets
f1_generator.py          # Generator for "F1" style feature sets (images)
video_generator.py       # Generator for generic video feature sets
video_f1_generator.py    # Generator for "F1" style video feature sets

interface.py             # Shared interfaces/contracts for generators/pipeline
worker.py                # Orchestrates tasks (queue/parallelization where applicable)
studio.py                # Main entry point / studio-style CLI for the toolkit

README.md                # This document
README.txt               # Legacy notes (kept for reference)
```

> Note: The script responsibilities above are inferred from filenames. See in-file docstrings for exact behavior.

### Requirements
- Windows 10/11 (PowerShell preferred)
- Python 3.9+ (recommended)
- pip and virtual environments (optional but recommended)

### Quick Start (Windows)
1) Open PowerShell in the project folder.
2) (Optional) Create and activate a virtual environment:
```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
```
3) Install dependencies (if your scripts require any):
```powershell
pip install -r requirements.txt
```
4) Run the studio entry point (interactive/CLI):
```powershell
python .\studio.py
```
5) Alternatively, use the batch helper for a one-click run:
```powershell
.\apply_fps_features.bat
```

### Typical Workflows
- **Generate original/base features**
```powershell
python .\original_generator.py
```

- **Generate F1-style features (images)**
```powershell
python .\f1_generator.py
```

- **Generate video features**
```powershell
python .\video_generator.py
```

- **Generate F1-style video features**
```powershell
python .\video_f1_generator.py
```

- **Restore from backup**
```powershell
.\restore_backup.bat
```

### How It Fits Together
- `interface.py` defines the contracts for generators so implementations stay consistent.
- `base_generator.py` provides shared utilities and/or a base class used by concrete generators.
- `*_generator.py` scripts implement specific generation strategies (original, F1, video, etc.).
- `worker.py` coordinates long-running or multi-step tasks, potentially batching or parallelizing work.
- `studio.py` acts as a central entry point for running the pipeline locally.

### Configuration
- Default input/output folders and options may be defined inside the scripts.
- If you require per-run configuration, check the CLI arguments in `studio.py` or the generators.
- Consider adding a `config.yaml` or `.env` if you need configurable paths or credentials.

### Tips
- Run PowerShell as Administrator if you hit permission errors when calling `.bat` files.
- Always keep backups enabled to ensure non-destructive edits.
- For large media batches, prefer running via `studio.py` or `worker.py` for better orchestration.

### Troubleshooting
- "Module not found" → Ensure you are running from the project root and your venv is active.
- "Permission denied" on `.bat` → Unblock the file in Properties or run PowerShell with elevated rights.
- "Python not recognized" → Install Python 3.9+ and add it to PATH.

### Contributing / Extending
- Add new generators by implementing the contracts in `interface.py`.
- Share utilities in `base_generator.py` to avoid duplication.
- Document CLI parameters in each script’s module docstring.

### License
Specify your license of choice (e.g., MIT, Apache-2.0) here.


