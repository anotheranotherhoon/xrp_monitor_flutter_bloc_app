# Repository Guidelines

## Project Structure & Module Organization

This is a Flutter 3.29.3 application managed with FVM. Application code lives in `lib/` and follows a layered flow: presentation -> BLoC -> repository -> API client.

- `lib/core/`: environment configuration and shared networking
- `lib/domain/`: typed domain models and JSON mappings
- `lib/data/`: repositories and persistence logic
- `lib/features/`: feature-specific events, states, and BLoCs
- `lib/presentation/`: pages, shells, and reusable widgets
- `test/`: unit and widget tests matching application behavior
- `android/`, `ios/`: platform runners and native configuration

Files ending in `.freezed.dart` or `.g.dart` are generated. Update their source declarations rather than editing generated output.

## Build, Test, and Development Commands

Use the pinned FVM SDK for every command:

```bash
fvm flutter pub get
fvm flutter run
fvm flutter analyze
fvm flutter test
fvm flutter build apk --debug
fvm dart run build_runner build --delete-conflicting-outputs
```

The app expects the companion NestJS API to run locally. Debug/Profile uses `10.0.2.2:3000` on Android emulators and `localhost:3000` on iOS simulators; release builds use the production endpoint.

## Coding Style & Naming Conventions

Follow `dart format` defaults (two-space indentation) and `flutter_lints`. The analyzer enables strict casts, inference, and raw-type checks, so prefer explicit generic and local variable types.

Use `UpperCamelCase` for classes and BLoCs, `lowerCamelCase` for members, and `snake_case.dart` for files. Keep feature logic under `lib/features/<feature>/`; UI code should delegate networking and persistence to repositories. Run:

```bash
fvm dart format lib test
```

## Testing Guidelines

Tests use `flutter_test`. Name files `<subject>_test.dart`, use `test` for model/BLoC behavior, and `testWidgets` for UI interactions. Add focused regression coverage for changed states, parsing, caching, or user actions. Run the full suite with `fvm flutter test`; no numeric coverage threshold is currently enforced.

## Commit & Pull Request Guidelines

This repository has no commit history yet. Start with concise Conventional Commit messages such as `feat: add portfolio refresh` or `fix: preserve pagination cursor`.

Pull requests should describe behavior changes, list verification commands, link related issues, and include screenshots or recordings for visible UI changes. Keep generated files in sync with model or Freezed changes, and do not commit secrets, tokens, build output, or local IDE files.
