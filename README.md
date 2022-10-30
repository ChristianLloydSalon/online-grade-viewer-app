# BCC Online Grade Viewer Mobile App

Mobile Application for Buenavista Community College Online Grade Viewer

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Environment Variables
#### Initialize (Local)
- run `dart env.dart` to create `lib/config/environment.dart` file

#### Update Variables
- https://codemagic.io/app/635cffce6520fbd2d5c6d87e/settings (Environment Variables Tab)
- `.env` file with values
- `/scripts/create-env.sh` file
- `env.dart` file


### Folder Structure

```
.
├── assets
│   ├── fonts                   # Fonts
│   ├── images                  # Images
│   └── icons                   # Icons
├── lib
│   ├── common
│   │   ├── component           # Reusable Components
│   │   ├── di                  # Reusable Data Injections
│   │   ├── helper              # Reusable Helpers
│   │   ├── model               # Reusable DTOs and Value Objects
│   │   ├── service             # Reusable Third-party service
│   │   ├── state               # Reusable States
│   │   └── theme               # Theme
│   ├── <feature/module>
│   │   ├── data
│   │   │   └── di              # Data Injections
│   │   │   └── exception       # Exceptions
│   │   │   ├── local           # Local Data Source / Shared Prefs / Local Database
│   │   │   └── model           # DTOs and Value Objects
│   │   │   │   ├── input       # GraphQL Input Models
│   │   │   │   └── output      # GraphQL Output Models
│   │   │   ├── remote          # Remote Data Source / API Calls
│   │   │   └── repository      # Repository Implementations
│   │   │   └── service         # Third-party service
│   │   └── presentation
│   │   │   ├── component       # Components
│   │   │   ├── screen          # Screens
│   │   │   ├── state           # View Model States
│   │   │   ├── status          # Enum View Model Status
│   │   │   └── view_model      # View Models
│   ├── <feature/module>
│   └── ...
├── test
│   ├── <feature/module>
│   └── ...
└──

Notes
- Use singular folder name
```


## Git Workflow

### Feature

1. Checkout from `master` to get the latest codebase
2. Create feature branch ie. `feature/name-of-feature`
3. Ready to merge your changes? Create a Merge Request to `master` branch

### Enhancement / Update

1. Checkout from `master` to get the latest codebase
2. Create feature branch ie. `enhancement/name-of-feature`
3. Ready to merge your changes? Create a Merge Request to `master` branch

### Bugfix / Hotfix

1. Checkout from `master` to get the latest codebase
2. Create `bugfix` branch ie. `bugfix/name-of-feature`
3. Ready to merge your changes? Create a Merge Request to `master` branch

## Commit Message

https://www.freecodecamp.org/news/writing-good-commit-messages-a-practical-guide/


## Effective Code Review

### How to read the guides
Each guide is broken into a few sections. Sections contain a list of guidelines. Each guideline starts with one of these words:

`DO` guidelines describe practices that should always be followed. There will almost never be a valid reason to stray from them.

`PREFER` guidelines are practices that you should follow. However, there may be circumstances where it makes sense to do otherwise. Just make sure you understand the full implications of ignoring the guideline when you do.

`AVOID` guidelines are the dual to "prefer": stuff you shouldn't do but where there may be good reasons to on rare occasions.

`CONSIDER` guidelines are practices that you might or might not want to follow, depending on circumstances, precedents, and your own preference.

- AVOID using `useState()` as local state. PREFER using encapsulated state using View Model with @immutable state. CONSIDER using local state on a small widget that doesn't have a dependency on another widget
- AVOID using `UIState`. PREFER using Immutable State
- AVOID using `ChangeNotifier`. PREFER using `StateNotifier` as View Model
- AVOID load or API call on the constructor of View Model. PREFER calling it on the widget using `useEffect()` with initial status
- AVOID passing `provider` on repository or remote source. PREFER creating input model
- AVOID returning null values on remote source. PREFER returning empty list for collection or throw exception
- AVOID large or deep widget tree. PREFER multiple small widgets so we can easily encapsulate their own state
- AVOID using function widget. PREFER using class widget
- AVOID using multiple `bool`. PREFER using `enum`
- AVOID using `!`. PREFER [assigning a nullable field to a local variable](https://dart.dev/guides/language/effective-dart/usage#avoid-late-variables-if-you-need-to-check-whether-they-are-initialized) to enable type promotion and always check for null values
- AVOID returning nullable Future, Stream, and collection types
- DO [use rethrow to rethrow a caught exception](https://dart.dev/guides/language/effective-dart/usage#do-use-rethrow-to-rethrow-a-caught-exception)
- DO [annotate return types on function declarations](https://dart.dev/guides/language/effective-dart/design#do-annotate-return-types-on-function-declarations)
- DO [annotate parameter types on function declarations](https://dart.dev/guides/language/effective-dart/design#do-annotate-parameter-types-on-function-declarations)
- PREFER [signatures in function type annotations](https://dart.dev/guides/language/effective-dart/design#prefer-signatures-in-function-type-annotations)
- CONSIDER creating common components for reusable widgets

### Names

Naming is an important part of writing readable, maintainable code. The following best practices can help you achieve that goal.

- AVOID [starting a method name with get](https://dart.dev/guides/language/effective-dart/design#avoid-starting-a-method-name-with-get)
- AVOID [describing the parameters in the function's or method's name](https://dart.dev/guides/language/effective-dart/design#avoid-describing-the-parameters-in-the-functions-or-methods-name)
- PREFER [putting the most descriptive noun last](https://dart.dev/guides/language/effective-dart/design#prefer-putting-the-most-descriptive-noun-last)
- PREFER [a non-imperative verb phrase for a boolean property or variable](https://dart.dev/guides/language/effective-dart/design#prefer-a-non-imperative-verb-phrase-for-a-boolean-property-or-variable)
- PREFER [the "positive" name for a boolean property or variable](https://dart.dev/guides/language/effective-dart/design#prefer-the-positive-name-for-a-boolean-property-or-variable)
- PREFER [naming a method to___() if it copies the object's state to a new object](https://dart.dev/guides/language/effective-dart/design#prefer-naming-a-method-to___-if-it-copies-the-objects-state-to-a-new-object)
- PREFER [naming a method as___() if it returns a different representation backed by the original object](https://dart.dev/guides/language/effective-dart/design#prefer-naming-a-method-as___-if-it-returns-a-different-representation-backed-by-the-original-object)

## Building adaptive layouts

The first thing you must consider when building your layouts is how to adapt to various sizes and screens that it will run on. Here are some practices that can help you achieve an adaptive layout.

- [Layout widgets](https://docs.flutter.dev/development/ui/layout/building-adaptive-apps#layout-widgets)
- [Visual density](https://docs.flutter.dev/development/ui/layout/building-adaptive-apps#layout-widgets)

### Screen-based breakpoints

The simplest form of procedural layouts uses screen-based breakpoints. In Flutter, this can be done with the `MediaQuery` API.

Using breakpoints:
- You can set up a simple system to determine the device type.
- You can use it for making top-level decisions. Changing things like visual density, paddings, or font-sizes.
- You can use it to reflow your top-level widget trees. For example, you could switch from a vertical to a horizontal layout.
- You can also swap some of the widget completely from mobile to desktop layout.

You can simply implement breakpoints using the `ScreenSize` extension under `common/layout`.

```
@override
Widget build(BuildContext context) {
  if (context.isDesktopDevice) {
    // return your desktop layout here
  }

  // return your mobile layout here
}
```
