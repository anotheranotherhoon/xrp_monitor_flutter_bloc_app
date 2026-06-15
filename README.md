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
- Firebase Cloud Messaging 기반 로그인 회원 푸시 알림 수신

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

## Android APK

- 최신 APK: [app-release.apk](https://github.com/anotheranotherhoon/xrp_monitor_flutter_bloc_app/releases/download/v1.0.0%2B1/app-release.apk)
- 릴리스 페이지: [v1.0.0+1](https://github.com/anotheranotherhoon/xrp_monitor_flutter_bloc_app/releases/tag/v1.0.0%2B1)
- GitHub Actions는 `v*` 태그가 push되면 release APK를 빌드하고 GitHub
  Release 자산으로 업로드합니다.

## Firebase Cloud Messaging

관리자 대시보드에서 선택한 회원에게 발송한 FCM 푸시 알림을 수신합니다.
푸시 알림 기능은 BLoC가 Firebase SDK를 직접 제어하지 않고,
`AuthBloc -> AuthRepository -> PushNotificationService -> ApiClient` 순서로
인증 상태와 디바이스 토큰 생명주기를 연결합니다.

### 동작 흐름

1. `main.dart`에서 `ApiClient`와 `PushNotificationService`를 생성합니다.
2. 앱 시작 시 Firebase와 백그라운드 메시지 핸들러를 초기화합니다.
3. 저장된 세션 복원 또는 로그인 성공 후 알림 권한을 요청합니다.
4. 권한이 허용되면 현재 FCM 토큰과 플랫폼을 `POST /device-tokens`로 등록합니다.
5. Firebase 토큰이 갱신되면 `onTokenRefresh`를 통해 새 토큰을 자동 등록합니다.
6. `AuthLogoutRequested` 처리 시 로그아웃 전에 `DELETE /device-tokens`로
   현재 토큰을 비활성화합니다.
7. 이후 서버 로그아웃을 요청하고 Secure Storage의 JWT를 삭제합니다.

FCM 등록·해제 요청은 `ApiClient` 인터셉터가 Secure Storage의 JWT Access
Token을 자동으로 추가합니다. 지원 플랫폼 값은 `ANDROID`, `IOS`, `WEB`입니다.
Firebase 초기화나 토큰 등록 실패는 로그로 남기고 앱의 로그인 및 주요 기능은
계속 실행합니다.

### Firebase 프로젝트 설정

Firebase 프로젝트에 아래 앱을 등록해야 실제 푸시 토큰이 발급됩니다.

- Android application ID: `com.anotherhoon.xrp_monitor_flutter_bloc_app`
- iOS bundle ID: `com.anotherhoon.xrpMonitorFlutterBlocApp`

FlutterFire CLI로 플랫폼 설정 파일과 `firebase_options.dart`를 생성합니다.

```bash
flutterfire configure --project=<firebase-project-id>
```

플랫폼별 설정 파일:

- Android: `android/app/google-services.json`
- iOS: `ios/Runner/GoogleService-Info.plist`
- Dart: `lib/firebase_options.dart`

iOS는 Xcode의 Runner target에서 다음 capability를 활성화해야 합니다.

- Push Notifications
- Background Modes > Remote notifications

Android 13 이상과 iOS에서는 런타임 알림 권한이 필요합니다. 권한을 거부하면
앱의 다른 기능은 계속 사용할 수 있지만 FCM 토큰은 서버에 등록되지 않습니다.

### 주요 구현 파일

| 파일 | 역할 |
| ---- | ---- |
| `lib/main.dart` | Firebase 서비스 생성·초기화 및 Repository 의존성 주입 |
| `lib/core/notifications/push_notification_service.dart` | 권한 요청, 토큰 등록·갱신·해제 |
| `lib/data/repositories/auth_repository.dart` | 세션 복원, 로그인, 로그아웃과 FCM 토큰 연결 |
| `lib/features/auth/auth_bloc.dart` | 인증 Event와 State 처리 |
| `lib/core/network/api_client.dart` | JWT 자동 주입과 디바이스 토큰 API 요청 |
| `lib/firebase_options.dart` | FlutterFire 플랫폼별 Firebase 설정 |

모바일 Firebase 설정 파일과 서버용 Firebase Admin 서비스 계정은 서로 다른
용도입니다. Firebase Admin private key는 앱이나 이 저장소에 포함하지 않습니다.
