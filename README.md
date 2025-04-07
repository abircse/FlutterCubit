# 📱 Flutter Cubit API Example

This is a simple Flutter application demonstrating how to fetch data from an API (`https://reqres.in/api/users`) using **Cubit** for state management and **Dio** for networking.

---

## ✨ Features

- 🌐 **API Integration** using Dio to make HTTP requests.
- 🧠 **State Management** with Cubit (from the `flutter_bloc` package).
- 🚫 **Auto Fetch** on screen load, without needing to click a button.
- 🎨 **Clean UI** displaying a list of users with avatar, name, and email.
- 📸 **App Screenshot** included below.

---

## 📸 App Screenshot

![User List](assets/screenshots/emulator_home.png)

---

## 🧪 Packages Used

| Package               | Description                        |
|-----------------------|------------------------------------|
| [flutter_bloc](https://pub.dev/packages/flutter_bloc) | Provides Cubit for state management. |
| [dio](https://pub.dev/packages/dio)                | HTTP client for making API requests. |

---

## 🗂️ Project Structure

The folder structure follows the **Clean Architecture** pattern, separating concerns into different layers:

