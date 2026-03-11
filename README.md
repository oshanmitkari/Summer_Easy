# 🌞 Summer Easy

[![Android](https://img.shields.io/badge/Platform-Android-green.svg)](https://www.android.com/)
[![API](https://img.shields.io/badge/API-21%2B-brightgreen.svg?style=flat)](https://android-arsenal.com/api?level=21)
[![Gradle](https://img.shields.io/badge/Gradle-8.6-blue.svg)](https://gradle.org)
[![Material Design 3](https://img.shields.io/badge/Material%20Design-3-blue)](https://m3.material.io/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A modern Android application designed to make your summer planning easy and enjoyable. Built with the latest Android development tools and Material Design 3 guidelines.

## 📱 Features

- **🎨 Splash Screen** - Elegant animated splash screen with fade-in effects
- **🔐 Login System** - User authentication with modern UI/UX
- **🎭 Lottie Animations** - Smooth, high-quality animations for enhanced user experience
- **🎨 Material Design 3** - Modern, beautiful UI following Google's latest design guidelines
- **🌈 Custom Theming** - Summer-themed color palette with yellow accents
- **📱 Responsive Design** - Optimized for various screen sizes and orientations

## 🛠️ Technical Specifications

### Build Configuration
- **Minimum SDK**: 21 (Android 5.0 Lollipop)
- **Target SDK**: 34 (Android 14)
- **Compile SDK**: 34
- **Gradle Version**: 8.6
- **Android Gradle Plugin**: 8.4.1
- **JDK Version**: 17
- **Language**: Java 8

### Dependencies

| Library | Version | Purpose |
|---------|---------|---------|
| Material Components | 1.12.0 | Material Design 3 UI components |
| AndroidX AppCompat | 1.7.0 | Backward compatibility support |
| ConstraintLayout | 2.1.4 | Flexible layout system |
| AndroidX Activity | 1.9.0 | Activity lifecycle management |
| Lottie | 3.4.0 | JSON-based animations |
| JUnit | 4.13.2 | Unit testing framework |
| Espresso | 3.5.1 | UI testing framework |

## 📂 Project Structure

```
SummerEasy/
├── app/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/example/summereasy/
│   │   │   │   ├── SplashActivity.java
│   │   │   │   ├── LoginActivity.java
│   │   │   │   └── LoginPageActivity.java
│   │   │   ├── res/
│   │   │   │   ├── layout/          # XML layouts
│   │   │   │   ├── values/          # Colors, strings, themes
│   │   │   │   ├── drawable/        # Images and drawables
│   │   │   │   └── mipmap/          # App icons
│   │   │   └── AndroidManifest.xml
│   │   ├── test/                    # Unit tests
│   │   └── androidTest/             # Instrumentation tests
│   ├── build.gradle.kts
│   └── proguard-rules.pro
├── gradle/
│   ├── libs.versions.toml           # Version catalog
│   └── wrapper/
├── build.gradle.kts
├── settings.gradle.kts
├── gradle.properties
└── README.md
```

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- **Android Studio** (Hedgehog | 2023.1.1 or later)
- **JDK 17** or higher
- **Git** for version control
- **Android SDK** with API level 34

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/oshanmitkari/Summer_Easy.git
   cd Summer_Easy
   ```

2. **Open in Android Studio**
   - Launch Android Studio
   - Select "Open an Existing Project"
   - Navigate to the cloned repository folder
   - Click "OK" and wait for Gradle sync to complete

3. **Configure SDK**
   - Ensure Android SDK is properly configured
   - Install any missing SDK components if prompted

4. **Build the project**
   ```bash
   ./gradlew build
   ```
   Or on Windows:
   ```bash
   gradlew.bat build
   ```

5. **Run the application**
   - Connect an Android device or start an emulator
   - Click the "Run" button in Android Studio
   - Or use command line:
     ```bash
     ./gradlew installDebug
     ```

## 🎯 Usage

1. **Launch the app** - The splash screen will appear with animated logo and text
2. **Login** - Enter your credentials on the login screen
3. **Explore** - Navigate through the app features (coming soon)

## 📱 Screenshots

_Screenshots coming soon..._

## 🔧 Configuration

### Gradle Properties
The project uses the following Gradle configurations:
- JVM Args: `-Xmx2048m -Dfile.encoding=UTF-8`
- AndroidX: Enabled
- Non-transitive R class: Enabled

### ProGuard
ProGuard rules are configured in `app/proguard-rules.pro` for release builds.

## 🧪 Testing

### Run Unit Tests
```bash
./gradlew test
```

### Run Instrumentation Tests
```bash
./gradlew connectedAndroidTest
```

## 📊 Development Status

🚧 **Current Status**: Early Development

### Completed
- ✅ Project setup and configuration
- ✅ Splash screen implementation
- ✅ Login UI design
- ✅ Material Design 3 theming
- ✅ Lottie animation integration

### In Progress
- 🔄 User authentication logic
- 🔄 Main application features
- 🔄 Database integration

### Planned
- 📋 Summer activity planning
- 📋 Weather integration
- 📋 Social features
- 📋 Notifications system

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Oshan Mitkari**

- GitHub: [@oshanmitkari](https://github.com/oshanmitkari)
- Repository: [Summer_Easy](https://github.com/oshanmitkari/Summer_Easy)

## 📞 Contact

For questions, suggestions, or feedback, please open an issue on GitHub.

## 🙏 Acknowledgments

- [Material Design](https://m3.material.io/) - Design system
- [Lottie](https://airbnb.design/lottie/) - Animation library by Airbnb
- [Android Developers](https://developer.android.com/) - Documentation and resources

---

<p align="center">Made with ❤️ for a better summer experience</p>

