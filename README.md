# XRP Monitor Flutter BLoC App

기존 XRP Monitor 사용자 앱의 주요 기능을 BLoC 패턴으로 다시 구성한 독립
Flutter 프로젝트입니다.

## Architecture

```text
Presentation
  -> Event
  -> Bloc
  -> Repository
  -> ApiClient
  -> NestJS API
```

- `lib/core`: 실행 환경과 공통 네트워크
- `lib/domain`: 명시적 타입의 도메인 모델
- `lib/data`: API Repository
- `lib/features`: 기능별 Event, State, Bloc
- `lib/presentation`: 화면과 위젯

Analyzer에서 `strict-casts`, `strict-inference`, `strict-raw-types`를
활성화해 타입 선언을 엄격하게 검사합니다.

도메인 모델과 BLoC State는 `Freezed`로 생성하며 API 모델의 JSON 변환은
`json_serializable`을 사용합니다.

```bash
fvm dart run build_runner build --delete-conflicting-outputs
```

## Features

- JWT 로그인, 회원가입, 로그아웃
- Socket.io 기반 XRP 실시간 가격
- CryptoCompare 기사 및 네이버 뉴스 페이지네이션
- YouTube 영상 목록
- XRP 포트폴리오 조회·수정 및 오프라인 캐시·재동기화
- 관리자 팝업 이미지 캐러셀
- 팝업 `오늘 하루 보지 않기`, 현재 앱 세션 `닫기`

## Run

먼저 NestJS 서버를 실행합니다.

```bash
cd ../xrp_monitor_nest_server
npm run start:dev
```

앱을 실행합니다.

```bash
fvm flutter run
```

Debug/Profile 빌드는 로컬 API를 사용합니다.

- Android 에뮬레이터: `http://10.0.2.2:3000`
- iOS 시뮬레이터: `http://localhost:3000`
- Release: `https://xrp-monitor.p-e.kr`

## Verify

```bash
fvm flutter analyze
fvm flutter test
fvm flutter build apk --debug
```

## Firebase Cloud Messaging

Firebase 프로젝트에 아래 앱을 등록해야 실제 푸시 토큰이 발급됩니다.

- Android: `com.anotherhoon.xrp_monitor_flutter_bloc_app`
- iOS: `com.anotherhoon.xrpMonitorFlutterBlocApp`

`flutterfire configure`를 실행하거나 Firebase Console에서 받은
`google-services.json`과 `GoogleService-Info.plist`를 각 플랫폼에
설정합니다. iOS는 Xcode에서 Push Notifications capability와 Background
Modes의 Remote notifications도 활성화해야 합니다.
