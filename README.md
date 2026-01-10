# MaterialDesignSymbol

Icon font library for Swift. Currently supports Google Material Design Icons.

## Requirements

- iOS 16.0+
- watchOS 9.0+
- Swift 5.0+

## Installation

### Swift Package Manager

Add via Xcode: File > Add Package Dependencies...

```
https://github.com/tichise/MaterialDesignSymbol.git
```

## Usage

### UIImage

```swift
import MaterialDesignSymbol

let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
let iconImage = symbol.image()
```

With color:

```swift
let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
symbol.addAttribute(foregroundColor: .red)
let iconImage = symbol.image()
```

With custom size:

```swift
let symbol = MaterialDesignSymbol(icon: .home48px, size: 25)
let iconImage = symbol.image(size: CGSize(width: 50, height: 50))
```

### UILabel

```swift
import MaterialDesignSymbol

titleLabel.font = MaterialDesignFont.shared.fontOfSize(20)
titleLabel.text = MaterialDesignIconEnum.home48px.rawValue
```

### SwiftUI

```swift
import SwiftUI
import MaterialDesignSymbol

struct ContentView: View {
    var body: some View {
        Image(uiImage: MaterialDesignSymbol(icon: .home48px, size: 30).image())
    }
}
```

## License

### Font License

Author: Google
Link: https://github.com/google/material-design-icons
License: Apache License 2.0

### Library License

MIT License
