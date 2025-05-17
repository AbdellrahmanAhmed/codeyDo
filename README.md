# CodeyDo

**CodeyDo** is a personal learning project built with **Flutter**.  
The purpose of this app is to put into practice the concepts and tools I'm learning as I grow in my
Flutter development journey.

## Why this project?

I'm committed to deepening my understanding of Flutter by building real, functional applications
instead of just watching tutorials.  
This app serves as a sandbox where I can implement, test, and iterate on everything I learn.

## What I’m using here:

- ✅ State management using **Provider**
- ☐

(Will keep updating this list as I progress.)

---

## Project Structure

```bash
lib/
│
├── core/                  # الأكواد العامة الأساسية (زي الثوابت، الخدمات)
│   ├── constants/         # ثابت النصوص والألوان والـ padding
│   │   ├── app_strings.dart
│   │   ├── app_colors.dart
│   │   x   app_values.dart 
│   └── utils/             # أدوات مساعدة (مثلاً: formatters, validators)
│       └── date_formatter.dart
│
├── classes/                # الكلاسات أو الموديلات اللي بتمثل البيانات
│   x   user_model.dart 
│
├── services/             # الخدمات (API – local storage – auth... إلخ)
│   └── api_service.dart
│
x   providers/            # ملفات الـ Provider وإدارة الحالة 
│   └── user_provider.dart
│
├── views/                # واجهات المستخدم (الشاشات)
│   ├── home/             # شاشة الـ Home وكل ما يتعلق بها
│   │   ├── provider_screen.dart
│   x   login/            # شاشة تسجيل الدخول
│       ├── login_screen.dart
│       └── login_form.dart
│
├── widgets/              # ويدجتس عامة reusable
│   └── custom_button.dart
│
x   routes/               # إدارة التنقل بين الصفحات 
│   └── app_routes.dart
│
x   theme/                # الثيمات (ألوان، ستايلات، مود دارك/لايت) 
│   └── app_theme.dart
│
└── main.dart             # نقطة البداية للتطبيق
