# Script to push SummerEasy project to GitHub
# Repository: https://github.com/oshanmitkari/Summer_Easy.git

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Pushing SummerEasy to GitHub" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Check if git is initialized
Write-Host "Step 1: Checking git initialization..." -ForegroundColor Yellow
if (Test-Path .git) {
    Write-Host "✓ Git repository already initialized" -ForegroundColor Green
} else {
    Write-Host "✗ Git not initialized. Initializing..." -ForegroundColor Red
    git init
    Write-Host "✓ Git initialized" -ForegroundColor Green
}
Write-Host ""

# Step 2: Add remote repository
Write-Host "Step 2: Configuring remote repository..." -ForegroundColor Yellow
$remoteUrl = "https://github.com/oshanmitkari/Summer_Easy.git"
$existingRemote = git remote get-url origin 2>$null

if ($existingRemote) {
    Write-Host "Remote 'origin' already exists: $existingRemote" -ForegroundColor Yellow
    if ($existingRemote -ne $remoteUrl) {
        Write-Host "Updating remote URL to: $remoteUrl" -ForegroundColor Yellow
        git remote set-url origin $remoteUrl
        Write-Host "✓ Remote URL updated" -ForegroundColor Green
    } else {
        Write-Host "✓ Remote URL is already correct" -ForegroundColor Green
    }
} else {
    Write-Host "Adding remote 'origin': $remoteUrl" -ForegroundColor Yellow
    git remote add origin $remoteUrl
    Write-Host "✓ Remote added" -ForegroundColor Green
}
Write-Host ""

# Step 3: Check git status
Write-Host "Step 3: Checking git status..." -ForegroundColor Yellow
Write-Host "----------------------------------------" -ForegroundColor Gray
git status
Write-Host "----------------------------------------" -ForegroundColor Gray
Write-Host ""

# Step 4: Verify .gitignore
Write-Host "Step 4: Verifying .gitignore configuration..." -ForegroundColor Yellow
if (Test-Path .gitignore) {
    Write-Host "✓ .gitignore file exists" -ForegroundColor Green
    Write-Host "Checking for sensitive files..." -ForegroundColor Yellow
    
    # Check if local.properties would be committed
    $trackedFiles = git ls-files local.properties 2>$null
    if ($trackedFiles) {
        Write-Host "⚠ WARNING: local.properties is tracked! This should be ignored." -ForegroundColor Red
        Write-Host "Run: git rm --cached local.properties" -ForegroundColor Yellow
    } else {
        Write-Host "✓ local.properties is properly ignored" -ForegroundColor Green
    }
} else {
    Write-Host "⚠ WARNING: No .gitignore file found!" -ForegroundColor Red
}
Write-Host ""

# Step 5: Stage all files
Write-Host "Step 5: Staging files..." -ForegroundColor Yellow
Write-Host "Do you want to stage all files? (Y/N): " -ForegroundColor Cyan -NoNewline
$response = Read-Host
if ($response -eq 'Y' -or $response -eq 'y') {
    git add .
    Write-Host "✓ All files staged" -ForegroundColor Green
    Write-Host ""
    Write-Host "Files to be committed:" -ForegroundColor Yellow
    Write-Host "----------------------------------------" -ForegroundColor Gray
    git status --short
    Write-Host "----------------------------------------" -ForegroundColor Gray
} else {
    Write-Host "Skipping staging. You can manually stage files with: git add <files>" -ForegroundColor Yellow
    exit
}
Write-Host ""

# Step 6: Create initial commit
Write-Host "Step 6: Creating initial commit..." -ForegroundColor Yellow
Write-Host "Do you want to create the initial commit? (Y/N): " -ForegroundColor Cyan -NoNewline
$response = Read-Host
if ($response -eq 'Y' -or $response -eq 'y') {
    git commit -m "Initial commit: SummerEasy Android project

- Android app with splash screen and login activities
- Material Design 3 implementation
- Lottie animations support
- Gradle 8.6 with JDK 17
- Min SDK 21, Target SDK 34"
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ Commit created successfully" -ForegroundColor Green
    } else {
        Write-Host "✗ Commit failed" -ForegroundColor Red
        exit
    }
} else {
    Write-Host "Skipping commit. You can manually commit with: git commit -m 'message'" -ForegroundColor Yellow
    exit
}
Write-Host ""

# Step 7: Push to GitHub
Write-Host "Step 7: Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "Do you want to push to GitHub? (Y/N): " -ForegroundColor Cyan -NoNewline
$response = Read-Host
if ($response -eq 'Y' -or $response -eq 'y') {
    Write-Host "Pushing to main branch..." -ForegroundColor Yellow
    git push -u origin main
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "✓ Successfully pushed to GitHub!" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
        Write-Host ""
        Write-Host "Repository URL: https://github.com/oshanmitkari/Summer_Easy" -ForegroundColor Cyan
    } else {
        Write-Host ""
        Write-Host "⚠ Push failed. This might be because:" -ForegroundColor Yellow
        Write-Host "  - The branch name is 'master' instead of 'main'" -ForegroundColor Yellow
        Write-Host "  - You need to authenticate with GitHub" -ForegroundColor Yellow
        Write-Host "  - The remote repository doesn't exist" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Try running: git push -u origin master" -ForegroundColor Cyan
    }
} else {
    Write-Host "Skipping push. You can manually push with: git push -u origin main" -ForegroundColor Yellow
}
Write-Host ""
Write-Host "Done!" -ForegroundColor Cyan

