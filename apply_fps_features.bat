@echo off
setlocal enabledelayedexpansion

echo ========================================
echo FPS Bar Feature - Frame Pack Studio
echo ========================================
echo.

REM Check if fps_feature_files directory exists
if not exist "fps_feature_files" (
    echo [ERROR] fps_feature_files directory not found!
    echo Please run copy_fps_files.bat first.
    pause
    exit /b 1
)

echo [INFO] Applying FPS bar features...
echo.

REM Create backup directory
set BACKUP_DIR=backup_%date:~-4,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%%time:~6,2%
set BACKUP_DIR=%BACKUP_DIR: =0%
if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"
echo [INFO] Backup directory created: %BACKUP_DIR%

echo.
echo [INFO] Backing up existing files...

REM Backup existing files
if exist "modules\interface.py" (
    copy "modules\interface.py" "%BACKUP_DIR%\interface.py" >nul
    echo [OK] modules\interface.py backed up
) else (
    echo [WARNING] modules\interface.py not found
)

if exist "studio.py" (
    copy "studio.py" "%BACKUP_DIR%\studio.py" >nul
    echo [OK] studio.py backed up
) else (
    echo [WARNING] studio.py not found
)

if exist "modules\pipelines\worker.py" (
    copy "modules\pipelines\worker.py" "%BACKUP_DIR%\worker.py" >nul
    echo [OK] modules\pipelines\worker.py backed up
) else (
    echo [WARNING] modules\pipelines\worker.py not found
)

if exist "modules\generators\base_generator.py" (
    copy "modules\generators\base_generator.py" "%BACKUP_DIR%\base_generator.py" >nul
    echo [OK] modules\generators\base_generator.py backed up
) else (
    echo [WARNING] modules\generators\base_generator.py not found
)

if exist "modules\generators\video_generator.py" (
    copy "modules\generators\video_generator.py" "%BACKUP_DIR%\video_generator.py" >nul
    echo [OK] modules\generators\video_generator.py backed up
) else (
    echo [WARNING] modules\generators\video_generator.py not found
)

if exist "modules\generators\video_f1_generator.py" (
    copy "modules\generators\video_f1_generator.py" "%BACKUP_DIR%\video_f1_generator.py" >nul
    echo [OK] modules\generators\video_f1_generator.py backed up
) else (
    echo [WARNING] modules\generators\video_f1_generator.py not found
)

if exist "modules\generators\original_generator.py" (
    copy "modules\generators\original_generator.py" "%BACKUP_DIR%\original_generator.py" >nul
    echo [OK] modules\generators\original_generator.py backed up
) else (
    echo [WARNING] modules\generators\original_generator.py not found
)

if exist "modules\generators\f1_generator.py" (
    copy "modules\generators\f1_generator.py" "%BACKUP_DIR%\f1_generator.py" >nul
    echo [OK] modules\generators\f1_generator.py backed up
) else (
    echo [WARNING] modules\generators\f1_generator.py not found
)

echo.
echo [INFO] Applying FPS feature files...

REM Apply FPS feature files
if exist "fps_feature_files\interface.py" (
    copy "fps_feature_files\interface.py" "modules\interface.py" >nul
    echo [OK] modules\interface.py updated
) else (
    echo [ERROR] fps_feature_files\interface.py not found
)

if exist "fps_feature_files\studio.py" (
    copy "fps_feature_files\studio.py" "studio.py" >nul
    echo [OK] studio.py updated
) else (
    echo [ERROR] fps_feature_files\studio.py not found
)

if exist "fps_feature_files\worker.py" (
    copy "fps_feature_files\worker.py" "modules\pipelines\worker.py" >nul
    echo [OK] modules\pipelines\worker.py updated
) else (
    echo [ERROR] fps_feature_files\worker.py not found
)

if exist "fps_feature_files\base_generator.py" (
    copy "fps_feature_files\base_generator.py" "modules\generators\base_generator.py" >nul
    echo [OK] modules\generators\base_generator.py updated
) else (
    echo [ERROR] fps_feature_files\base_generator.py not found
)

if exist "fps_feature_files\video_generator.py" (
    copy "fps_feature_files\video_generator.py" "modules\generators\video_generator.py" >nul
    echo [OK] modules\generators\video_generator.py updated
) else (
    echo [ERROR] fps_feature_files\video_generator.py not found
)

if exist "fps_feature_files\video_f1_generator.py" (
    copy "fps_feature_files\video_f1_generator.py" "modules\generators\video_f1_generator.py" >nul
    echo [OK] modules\generators\video_f1_generator.py updated
) else (
    echo [ERROR] fps_feature_files\video_f1_generator.py not found
)

if exist "fps_feature_files\original_generator.py" (
    copy "fps_feature_files\original_generator.py" "modules\generators\original_generator.py" >nul
    echo [OK] modules\generators\original_generator.py updated
) else (
    echo [ERROR] fps_feature_files\original_generator.py not found
)

if exist "fps_feature_files\f1_generator.py" (
    copy "fps_feature_files\f1_generator.py" "modules\generators\f1_generator.py" >nul
    echo [OK] modules\generators\f1_generator.py updated
) else (
    echo [ERROR] fps_feature_files\f1_generator.py not found
)

echo.
echo ========================================
echo FPS Bar Features Successfully Applied!
echo ========================================
echo.
echo [INFO] Backup files: %BACKUP_DIR%
echo [INFO] Please restart Frame Pack Studio
echo.
echo [TEST] Set FPS slider to 16-30 and generate video
echo [TEST] At 24 FPS, video should be longer
echo.
pause
