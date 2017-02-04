#### MaterialDesignSymbol ![CocoaPods Version](https://img.shields.io/cocoapods/v/MaterialDesignSymbol.svg?style=flat) ![Platform](https://img.shields.io/cocoapods/p/MaterialDesignSymbol.svg?style=flat) ![License](https://img.shields.io/cocoapods/l/MaterialDesignSymbol.svg?style=flat)
==============

<img src="https://s3.amazonaws.com/cocoacontrols_production/uploads/control_image/image/6377/_____.png" width="160px">

- Icon font library for Swift. Currently supports GoogleMaterialDesignIcons. ObjectiveC version is [here](https://github.com/tichise/MaterialDesignSymbolObjC).
- Googleのマテリアルデザインアイコンをシンボルフォントで呼び出せるライブラリです。ObjectiveC版は[こちら](https://github.com/tichise/MaterialDesignSymbolObjC)。
 - 詳細な使い方は[qiita](http://qiita.com/tichise/items/9fd290f1cc2af4796826)に記載してます。


#### Licence
font used in this project

Author of the font used in this  project: Google
Link: https://github.com/google/material-design-icons

Creative Commons Attribution 4.0 International (CC BY 4.0)

#### Examples

##### Image

```html
import MaterialDesignSymbol

var symbol:MaterialDesignSymbol = MaterialDesignSymbol(text:MaterialDesignIcon.list48px, size:25)
symbol.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor())
var iconImage:UIImage = symbol.imageWithSize(CGSizeMake(25, 25))
```

##### Text

```html
import MaterialDesignSymbol

titleLabel.font = MaterialDesignFont.fontOfSize(20)
titleLabel.text = MaterialDesignIcon.list48px
```

#### Installation (CocoaPods)
##### swift2.3
`pod MaterialDesignSymbol`

##### swift3.0
This has provided a trial basis

`pod 'MaterialDesignSymbol', :git => 'https://github.com/tichise/MaterialDesignSymbol', :branch => 'swift3'`

#### Related products

- Font Library
 - [MaterialDesignSymbol](https://github.com/tichise/MaterialDesignSymbol) Swift
 - [EntypoSymbol](https://github.com/tichise/EntypoSymbol) Swift
 - [MaterialDesignSymbolObjC](https://github.com/tichise/MaterialDesignSymbolObjC) ObjectiveC
 - [EntypoSymbolObjC](https://github.com/tichise/EntypoSymbolObjC) ObjectiveC
- Color Library
  - [MaterialDesignColor](https://github.com/tichise/MaterialDesignColor) Swift
  - [MaterialDesignColorObjC](https://github.com/tichise/MaterialDesignColorObjC) ObjectiveC
