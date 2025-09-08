

# ✅ To-Do List App

<p align="center">
  <img src="https://raw.githubusercontent.com/tehreemamir123/DevelopersHub_internship_project_6/9ede00961f6b0d0a73dc37bf567616b7e95779d3/WhatsApp%20Image%202025-09-08%20at%2012.35.57_b5ffb433.jpg" width="800"/>
</p>

<img src="https://img.icons8.com/color/96/000000/todo-list.png" width="100" />

A **Flutter To-Do List Application** built with **Provider** and **BLoC** state management, beautiful **Lottie animations**, and clean UI/UX.
This project is designed to demonstrate **state management, animations, and scalable architecture** in Flutter.

---

## 🚀 Features

* 📝 Add, update, and delete tasks
* ✅ Mark tasks as complete/incomplete
* 🎨 Beautiful UI with Lottie animations
* 📦 State management using **Provider** and **BLoC**
* 📱 Responsive design for mobile screens

---

## 📂 Project Structure

```
lib/
│
├── main.dart
├── home_screen.dart
├── splash_screen.dart
│
├── blocs/              # BLoC files
│   ├── task_bloc.dart
│   └── task_event.dart
│
├── providers/          # Provider files
│   └── task_provider.dart
│
├── models/             # Data models
│   └── task_model.dart
│
└── widgets/            # Reusable UI widgets
    └── task_tile.dart
```

---

## 📦 Packages Used

### 🔹 State Management

* **[provider](https://pub.dev/packages/provider)** – Simple and efficient state management for smaller features.
* **[flutter\_bloc](https://pub.dev/packages/flutter_bloc)** – Advanced state management for scalable and testable architecture.
* **[equatable](https://pub.dev/packages/equatable)** – Helps with value comparison in BLoC states and events.

### 🔹 UI & Animations

* **[lottie](https://pub.dev/packages/lottie)** – JSON-based vector animations for splash screens and task interactions.
* **[animated\_text\_kit](https://pub.dev/packages/animated_text_kit)** – Eye-catching animated text for splash screen and titles.
* **[cupertino\_icons](https://pub.dev/packages/cupertino_icons)** – iOS style icons.

---

## 🎬 Lottie Animations

All animations are stored in the `assets/animation/` folder.

Example usage in `splash_screen.dart`:

```dart
Lottie.asset(
  'assets/animation/todo.json',
  width: 200,
  height: 200,
  fit: BoxFit.contain,
);
```

---

## 🛠️ Getting Started

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/your-username/to_do_list_app.git
```

### 2️⃣ Install Dependencies

```bash
flutter pub get
```

### 3️⃣ Run the App

```bash
flutter run
```

---

## 📸 Screenshots

| Splash Screen                                                                                                                                                                                                    | Home Screen                                                                                                                                                                                                      | Task List                                                                                                                                                                                                        |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <img src="https://raw.githubusercontent.com/tehreemamir123/DevelopersHub_internship_project_6/4cc10af112266ad96cb127f6a7434df1ece63cf1/WhatsApp%20Image%202025-09-08%20at%2012.29.08_e8354709.jpg" width="200"/> | <img src="https://raw.githubusercontent.com/tehreemamir123/DevelopersHub_internship_project_6/9ede00961f6b0d0a73dc37bf567616b7e95779d3/WhatsApp%20Image%202025-09-08%20at%2012.35.57_b5ffb433.jpg" width="200"/> | <img src="https://raw.githubusercontent.com/tehreemamir123/DevelopersHub_internship_project_6/9ede00961f6b0d0a73dc37bf567616b7e95779d3/WhatsApp%20Image%202025-09-08%20at%2012.35.56_d26c5ad7.jpg" width="200"/> |

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](https://github.com/your-username/to_do_list_app/issues).

---

## 📄 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

✨ Built with ❤️ using **Flutter**


