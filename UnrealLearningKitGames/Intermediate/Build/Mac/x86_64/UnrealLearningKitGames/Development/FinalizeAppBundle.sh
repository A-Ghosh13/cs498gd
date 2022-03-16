#!/bin/sh
cd "/Users/anusha/Documents/Unreal Projects/UnrealLearningKitGames/Binaries/Mac"
mkdir -p "UnrealLearningKitGames.app/Contents/MacOS"
mkdir -p "UnrealLearningKitGames.app/Contents/Resources"
rsync --checksum "/Users/Shared/Epic Games/UE_4.27/Engine/Source/Runtime/Launch/Resources/Mac/UE4.icns" "UnrealLearningKitGames.app/Contents/Resources/UnrealLearningKitGames.icns"
rsync --checksum "/Users/Shared/Epic Games/UE_4.27/Engine/Source/Runtime/Launch/Resources/Mac/Info.plist" "$TMPDIR/TempInfo.plist"
/usr/bin/sed -i "" -e "s/\${EXECUTABLE_NAME}/UnrealLearningKitGames/g" "$TMPDIR/TempInfo.plist"
/usr/bin/sed -i "" -e "s/\${APP_NAME}/com.YourCompany.UnrealLearningKitGames/g" "$TMPDIR/TempInfo.plist"
/usr/bin/sed -i "" -e "s/\${MACOSX_DEPLOYMENT_TARGET}/10.14.6/g" "$TMPDIR/TempInfo.plist"
/usr/bin/sed -i "" -e "s/\${ICON_NAME}/UnrealLearningKitGames/g" "$TMPDIR/TempInfo.plist"
/usr/bin/sed -i "" -e "s/\${BUNDLE_VERSION}/4.27.2/g" "$TMPDIR/TempInfo.plist"
rsync --checksum "$TMPDIR/TempInfo.plist" "UnrealLearningKitGames.app/Contents/Info.plist"
chmod 644 "UnrealLearningKitGames.app/Contents/Info.plist"
echo 'echo -n "APPL????"' | bash > "$TMPDIR/TempPkgInfo"
rsync --checksum "$TMPDIR/TempPkgInfo" "UnrealLearningKitGames.app/Contents/PkgInfo"
touch -c "UnrealLearningKitGames.app"