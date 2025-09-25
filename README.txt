# FPS Bar Feature Files

This folder contains files modified for the FPS bar feature.

## Files

1. interface.py - FPS Slider UI added  
2. studio.py - FPS parameter added  
3. worker.py - FPS logic added  
4. base_generator.py - FPS attribute added  
5. video_generator.py - FPS display added  
6. video_f1_generator.py - FPS display added  
7. original_generator.py - FPS display added  
8. f1_generator.py - FPS display added  

## Features

- FPS Slider 16–30 FPS range  
- Model produces video at the directly selected FPS  
- Latent window size is automatically adjusted  
- Total sections are calculated based on FPS  
- Video recording is done at the selected FPS  

## Installation

There are **two ways** to install the FPS Bar feature:

### 1. Automatic Installation (Recommended)

1. Copy this folder into your `framepack-studio-main` directory.  
2. Run `apply_fps_features.bat`.  
   - This will automatically apply the FPS Bar modifications and embed them into the original files.  

### 2. Manual Installation

- If you prefer, you can manually replace the listed files (`interface.py`, `studio.py`, etc.) inside your `framepack-studio-main` folder.

## Restore to Original

- If you want to go back to the original files, simply run `restore_backup.bat`.  
- This will restore the previously backed up files.  

## Test

1. Launch Frame Pack Studio.  
2. Adjust the FPS Slider (between 16–30).  
3. Produce a video.  
4. The output video should be recorded at the selected FPS.  

## Notes

- Tested on GPUs with 8GB VRAM.  
- FPS Bar feature is fully integrated into `framepack-studio-main`.  
