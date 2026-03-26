# NSBM Navigation App - Full Clean Rebuild Script
# For Flutter 3.35.5 with updated Gradle/Kotlin versions

Write-Host "🧹 Starting full clean rebuild..." -ForegroundColor Cyan
Write-Host ""

# Step 1: Flutter clean
Write-Host "Step 1: Running flutter clean..." -ForegroundColor Yellow
flutter clean

# Step 2: Get dependencies
Write-Host ""
Write-Host "Step 2: Getting Flutter dependencies..." -ForegroundColor Yellow
flutter pub get

# Step 3: Clean Android build
Write-Host ""
Write-Host "Step 3: Cleaning Android build..." -ForegroundColor Yellow
Set-Location android
.\gradlew clean

# Step 4: Stop Gradle daemon
Write-Host ""
Write-Host "Step 4: Stopping Gradle daemon..." -ForegroundColor Yellow
.\gradlew --stop

# Step 5: Return to root
Set-Location ..

# Step 6: Run the app
Write-Host ""
Write-Host "✅ Clean complete! Ready to build." -ForegroundColor Green
Write-Host ""
Write-Host "Running flutter run..." -ForegroundColor Cyan
flutter run
