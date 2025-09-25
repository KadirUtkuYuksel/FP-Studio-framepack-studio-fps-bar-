@echo off
setlocal enabledelayedexpansion

echo ========================================
echo FPS Bar Feature - Restore Backup
echo ========================================
echo.

REM Find the most recent backup directory
set LATEST_BACKUP=
for /d %%i in (backup_*) do (
    if "%%i" gtr "!LATEST_BACKUP!" set LATEST_BACKUP=%%i
)

if "%LATEST_BACKUP%"=="" (
    echo [ERROR] No backup directory found!
    echo Please run apply_fps_features.bat first.
    pause
    exit /b 1
)

echo [INFO] Latest backup directory found: %LATEST_BACKUP%
echo.

REM Restore files
echo [INFO] Restoring files...

if exist "%LATEST_BACKUP%\interface.py" (
    copy "%LATEST_BACKUP%\interface.py" "modules\interface.py" >nul
    echo [OK] modules\interface.py restored
) else (
    echo [WARNING] %LATEST_BACKUP%\interface.py not found
)

if exist "%LATEST_BACKUP%\studio.py" (
    copy "%LATEST_BACKUP%\studio.py" "studio.py" >nul
    echo [OK] studio.py restored
) else (
    echo [WARNING] %LATEST_BACKUP%\studio.py not found
)

if exist "%LATEST_BACKUP%\worker.py" (
    copy "%LATEST_BACKUP%\worker.py" "modules\pipelines\worker.py" >nul
    echo [OK] modules\pipelines\worker.py restored
) else (
    echo [WARNING] %LATEST_BACKUP%\worker.py not found
)

if exist "%LATEST_BACKUP%\base_generator.py" (
    copy "%LATEST_BACKUP%\base_generator.py" "modules\generators\base_generator.py" >nul
    echo [OK] modules\generators\base_generator.py restored
) else (
    echo [WARNING] %LATEST_BACKUP%\base_generator.py not found
)

if exist "%LATEST_BACKUP%\video_generator.py" (
    copy "%LATEST_BACKUP%\video_generator.py" "modules\generators\video_generator.py" >nul
    echo [OK] modules\generators\video_generator.py restored
) else (
    echo [WARNING] %LATEST_BACKUP%\video_generator.py not found
)

if exist "%LATEST_BACKUP%\video_f1_generator.py" (
    copy "%LATEST_BACKUP%\video_f1_generator.py" "modules\generators\video_f1_generator.py" >nul
    echo [OK] modules\generators\video_f1_generator.py restored
) else (
    echo [WARNING] %LATEST_BACKUP%\video_f1_generator.py not found
)

if exist "%LATEST_BACKUP%\original_generator.py" (
    copy "%LATEST_BACKUP%\original_generator.py" "modules\generators\original_generator.py" >nul
    echo [OK] modules\generators\original_generator.py restored
) else (
    echo [WARNING] %LATEST_BACKUP%\original_generator.py not found
)

if exist "%LATEST_BACKUP%\f1_generator.py" (
    copy "%LATEST_BACKUP%\f1_generator.py" "modules\generators\f1_generator.py" >nul
    echo [OK] modules\generators\f1_generator.py restored
) else (
    echo [WARNING] %LATEST_BACKUP%\f1_generator.py not found
)

echo.
echo ========================================
echo Restore Completed Successfully!
echo ========================================
echo.
echo [INFO] Original files restored
echo [INFO] Please restart Frame Pack Studio
echo.
pause
