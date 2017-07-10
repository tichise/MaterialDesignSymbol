#### MaterialDesignSymbol ![CocoaPods Version](https://img.shields.io/cocoapods/v/MaterialDesignSymbol.svg?style=flat) ![Platform](https://img.shields.io/cocoapods/p/MaterialDesignSymbol.svg?style=flat) ![License](https://img.shields.io/cocoapods/l/MaterialDesignSymbol.svg?style=flat)

<img src="https://s3.amazonaws.com/cocoacontrols_production/uploads/control_image/image/6377/_____.png" width="160px">

- Icon font library for Swift. Currently supports GoogleMaterialDesignIcons. ObjectiveC version is [here](https://github.com/tichise/MaterialDesignSymbolObjC).


#### Licence
font used in this project

Author of the font used in this  project: Google
Link: https://github.com/google/material-design-icons

Creative Commons Attribution 4.0 International (CC BY 4.0)

#### Examples

##### Image

```html
import MaterialDesignSymbol

let symbol:MaterialDesignSymbol = MaterialDesignSymbol(text:MaterialDesignIcon.list48px as NSString, size:25)
symbol.addAttribute(attributeName: NSForegroundColorAttributeName, value: UIColor.red)
let iconImage:UIImage = symbol.imageWithSize(size: CGSize(width:25, height:25))
```

##### Text

```html
import MaterialDesignSymbol

titleLabel.font = MaterialDesignFont.fontOfSize(20)
titleLabel.text = MaterialDesignIcon.list48px
```

#### Installation (CocoaPods)
`pod MaterialDesignSymbol`

#### Related products

- Font Library
 - [MaterialDesignSymbol](https://github.com/tichise/MaterialDesignSymbol) Swift
 - [EntypoSymbol](https://github.com/tichise/EntypoSymbol) Swift
 - [MaterialDesignSymbolObjC](https://github.com/tichise/MaterialDesignSymbolObjC) ObjectiveC
 - [EntypoSymbolObjC](https://github.com/tichise/EntypoSymbolObjC) ObjectiveC
- Color Library
  - [MaterialDesignColor](https://github.com/tichise/MaterialDesignColor) Swift
  - [MaterialDesignColorObjC](https://github.com/tichise/MaterialDesignColorObjC) ObjectiveC
