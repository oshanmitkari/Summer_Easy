@echo off
echo ========================================
echo Pushing SummerEasy to GitHub
echo ========================================
echo.

echo Step 1: Checking git status...
git status
echo.

echo Step 2: Checking remote configuration...
git remote -v
echo.

echo Step 3: Adding/updating remote...
git remote add origin https://github.com/oshanmitkari/Summer_Easy.git 2>nul
if errorlevel 1 (
    echo Remote already exists, updating URL...
    git remote set-url origin https://github.com/oshanmitkari/Summer_Easy.git
)
echo Remote configured successfully
echo.

echo Step 4: Staging all files...
git add .
echo Files staged successfully
echo.

echo Step 5: Checking staged files...
git status --short
echo.

echo Step 6: Creating initial commit...
git commit -m "Initial commit: SummerEasy Android project - Android app with splash screen and login activities - Material Design 3 implementation - Lottie animations support - Gradle 8.6 with JDK 17 - Min SDK 21, Target SDK 34"
echo.

echo Step 7: Pushing to GitHub (main branch)...
git push -u origin main
if errorlevel 1 (
    echo.
    echo Push to 'main' failed, trying 'master' branch...
    git branch -M main
    git push -u origin main
)
echo.

echo ========================================
echo Done !
echo ========================================
pause

