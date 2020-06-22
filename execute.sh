flutter pub get
flutter format --set-exit-if-changed .
flutter analyze .
flutter build apk --obfuscate --release --split-debug-info=out/symbols