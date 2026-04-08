# ShopIt

ShopIt is a SwiftUI iOS app for browsing grocery categories, viewing product items, and saving favorites.

## Requirements

- macOS with Xcode 15+
- iOS 17+ simulator (or a physical iOS device)

## Run The App

1. Open `ShopIt.xcodeproj` in Xcode.
2. Select the `ShopIt` scheme.
3. Choose an iOS simulator.
4. Press Run (`Cmd + R`).

## Project Structure

- `ShopIt/Views`: App screens (`ContentView`, category and favorites views)
- `ShopIt/Components`: Reusable UI pieces (cards, rows, favorite button, item views)
- `ShopIt/Models`: Data models (`Item`, `Category`)
- `ShopIt/Assets.xcassets`: Category and item image assets
- `ShopIt/Preview Content`: SwiftUI preview helpers and preview assets

## Notes

- A repository-level `.gitignore` is included for Xcode build outputs and user-local files.
- Common local artifacts like `DerivedData`, `xcuserdata`, and `.DS_Store` are ignored.

## Tech Stack

- Swift
- SwiftUI
- Xcode project (`.xcodeproj`)
