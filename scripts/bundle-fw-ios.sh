DIR=$PWD

PROJECT_NAME=RNSDKExample
FRAMEWORK_NAME=RNSDK
OUT_BUILD_DIR=$DIR/ios/build
OUT_FW_DIR=$DIR/ios/SDKOutput/Frameworks

rm -rf $OUT_BUILD_DIR
rm -rf $OUT_FW_DIR
(cd ios && RCT_NEW_ARCH_ENABLED=1 pod install)

SIMULATOR_ARCHIVE_PATH=$OUT_BUILD_DIR/${FRAMEWORK_NAME}-iphonesimulator.xcarchive
DEVICE_ARCHIVE_PATH=$OUT_BUILD_DIR/${FRAMEWORK_NAME}-iphoneos.xcarchive

# Simulator xcarchieve
xcodebuild archive \
  -workspace ios/${PROJECT_NAME}.xcworkspace \
  -scheme ${FRAMEWORK_NAME} \
  -archivePath ${SIMULATOR_ARCHIVE_PATH} \
  -configuration Release \
  -sdk iphonesimulator \
  SKIP_INSTALL=NO \
  BUILD_LIBRARIES_FOR_DISTRIBUTION=YES \
  ENABLE_USER_SCRIPT_SANDBOXING=NO \
  clean build

# Device xcarchieve
xcodebuild archive \
  -workspace ios/${PROJECT_NAME}.xcworkspace \
  -scheme ${FRAMEWORK_NAME} \
  -archivePath ${DEVICE_ARCHIVE_PATH} \
  -sdk iphoneos \
  -configuration Release \
  SKIP_INSTALL=NO \
  BUILD_LIBRARIES_FOR_DISTRIBUTION=YES \
  ENABLE_USER_SCRIPT_SANDBOXING=NO \
  clean build

cd $SIMULATOR_ARCHIVE_PATH/Products/Library/Frameworks
for framework in *; do
  frameworkName=${framework//.framework/}
  xcodebuild -create-xcframework \
    -framework $SIMULATOR_ARCHIVE_PATH/Products/Library/Frameworks/$frameworkName.framework \
    -framework $DEVICE_ARCHIVE_PATH/Products/Library/Frameworks/$frameworkName.framework \
    -output $OUT_FW_DIR/$frameworkName.xcframework
done