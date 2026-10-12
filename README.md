# ☕ Coffee Shop Demo — Flutter Application

A Flutter-based coffee ordering application created as a developer portfolio project to demonstrate mobile UI development, state management, API-layer design, and application architecture.

This public portfolio version uses **fictional demo data** and a local mock HTTP adapter. It is designed to demonstrate the application's structure and development techniques without connecting to the original production backend.

> **Demo Notice:** This repository is an independent portfolio demonstration. All displayed products, users, orders, and other sample records are fictional. The application does not connect to the original production backend.

## 📱 Overview

Coffee Shop Demo provides a sample coffee-ordering experience with screens and workflows for browsing products, managing favorites, customizing a cart, reviewing orders, and exploring account-related features.

The project focuses on demonstrating how a Flutter application can organize UI, state management, repositories, networking abstractions, and demo data into maintainable components.

## ✨ Features

Features available in the demo include:

- **Product Browsing** — Explore sample coffee products and categories.
- **Favorites** — Demonstrate favorite-product interactions using demo data.
- **Shopping Cart** — Explore cart interactions and item customization.
- **Order History** — View fictional sample orders.
- **Authentication UI** — Explore authentication-related screens and demo flows.
- **State Management** — Manage application state with BLoC/Cubit.
- **Networking Layer** — Demonstrate Dio configuration and request-handling abstractions.
- **Mock HTTP Adapter** — Handle supported demo requests locally without contacting the original backend.
- **Error Handling** — Organize request failures and application states.
- **Demo Mode Indicator** — Clearly identify sample data in the user interface.

*The demo implementation is not a production ordering service. Backend-dependent operations are simulated locally.*

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| Flutter | Cross-platform mobile UI |
| Dart | Application development |
| flutter_bloc / Cubit | State management |
| Dio | HTTP client and networking abstraction |
| Repository Pattern | Organizing data access |
| Dependency Injection | Managing application dependencies |
| JSON Serialization | Working with structured request and response data |
| Local Mock Data | Demonstrating application flows without a production backend |

The stack above reflects the project's reported implementation. Refer to `pubspec.yaml` and the source code for exact package versions and implementation details.

## 🏗️ Architecture

The project separates application responsibilities into components such as:

- **Presentation Layer:** Screens, widgets, and user interactions.
- **State Management:** Cubits and BLoCs that manage UI states.
- **Repository Layer:** Coordinates data access for application features.
- **Networking Layer:** Provides API client configuration and request handling.
- **Demo Data Layer:** Supplies fictional records for portfolio demonstrations.

The exact separation varies by feature; this project should not be considered a claim of fully implemented Clean Architecture.

### Demo Request Flow

```text
Screen / Widget
      ↓
   Cubit / BLoC
      ↓
   Repository
      ↓
   API Service
      ↓
 Demo HTTP Adapter
      ↓
 Fictional Demo Data
```

In demo mode, supported requests are handled locally. No request is sent to the original production backend.

## 🧪 Testing and Code Quality

The project was previously validated with the following results after the portfolio cleanup:

- **Automated tests:** 124 passed.
- **Flutter analyzer:** 0 errors and 0 warnings, with 64 informational lints reported.

These results describe the reported validation run and may change as the code evolves. Run the commands below to verify the current checkout.

## 🚀 Getting Started

### Prerequisites

Install the Flutter SDK and configure a supported development environment.

Verify your installation:

```bash
flutter doctor
```

### Installation

Clone this repository:

```bash
git clone https://github.com/kamal-taha-flutter/Coffee-Ambasuoni-App.git
cd Coffee-Ambasuoni-App
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

### Code Analysis

```bash
flutter analyze
```

### Run Tests

```bash
flutter test
```

## ⚙️ Demo Configuration

The public version is intended to run in demo mode by default.

- Sample records are provided locally.
- The mock HTTP adapter handles supported requests in-process.
- The original production backend is not used by the demo flow.
- No production credentials are required for the intended demo configuration.

If you modify the demo configuration, ensure that you do not restore private backend URLs, credentials, or company-specific configuration.

Any API base URL supplied for development must be a verified, authorized demo endpoint. Placeholder URLs are not functional API services.

## 📂 Project Structure

The project follows a feature-oriented organization with shared application components.

```text
lib/
├── core/
│   ├── config/
│   ├── demo/
│   ├── networking/
│   └── widgets/
├── features/
│   ├── home/
│   ├── favourite/
│   ├── cart/
│   ├── orders/
│   └── ...
└── main.dart

assets/
test/
android/
ios/
web/
```

*This is a representative overview. Refer to the repository for the complete structure and exact feature names.*

## 🔒 Privacy and Security

This portfolio version is designed to avoid exposing the original application's backend connection and production data.

- Fictional sample records are used for demonstration.
- The demo adapter handles supported requests locally.
- Production credentials must not be committed.
- Environment-specific configuration should remain outside public source control.
- The original project's Git history must not be published if it contains private backend references or other sensitive information.

**Before redistributing or reusing project code and assets, ensure that you have permission to publish them.** Removing company branding or replacing API data does not automatically grant permission to publish proprietary source code or third-party assets.

## 🎯 Project Goals

This project demonstrates practical experience with:

- Building Flutter interfaces.
- Organizing code by feature.
- Managing state with BLoC/Cubit.
- Structuring data access through repositories.
- Working with Dio and networking abstractions.
- Handling loading, success, and error states.
- Creating local mock data for isolated demonstrations.
- Preparing a Flutter application for portfolio review.

## 👨‍💻 Author

**Kamal Taha**

Junior Flutter Developer

- GitHub: [@kamal-taha-flutter](https://github.com/kamal-taha-flutter)
- LinkedIn: [Kamal Taha](https://linkedin.com/in/kamal-taha-flutter)

---

If you find this project useful as a learning reference, feel free to explore the code and review its implementation.

**Built with Flutter and Dart.**
