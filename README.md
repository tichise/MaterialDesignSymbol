#### MaterialDesignSymbol

Icon font library for Swift. Currently supports GoogleMaterialDesignIcons. ObjectiveC version is [here](https://github.com/tichise/MaterialDesignSymbolObjC).

#### Image

<img src="https://s3.amazonaws.com/cocoacontrols_production/uploads/control_image/image/6377/_____.png" width="160px">


#### Licence
font used in this project

Author of the font used in this  project: Google
Link: https://github.com/google/material-design-icons

Creative Commons Attribution 4.0 International (CC BY 4.0)

#### Examples Swift

##### Image

```html
import MaterialDesignSymbol

let symbol:MaterialDesignSymbol = MaterialDesignSymbol(text:MaterialDesignIcon.list48px, size:25)
symbol.addAttribute(attributeName: NSAttributedStringKey.foregroundColor, value: UIColor.red)
let iconImage:UIImage = symbol.image(size: CGSize(width:25, height:25))
```

##### Text

```html
import MaterialDesignSymbol

titleLabel.font = MaterialDesignFont.fontOfSize(20)
titleLabel.text = MaterialDesignIcon.list48px
```

#### Examples ObjectiveC

##### Image
```html
@import MaterialDesignSymbol;

    
MaterialDesignSymbol *symbol = [[MaterialDesignSymbol alloc] initWithText:[MaterialDesignIcon home48px] size:30];
[symbol addAttributeWithAttributeName:NSForegroundColorAttributeName value:[UIColor blackColor]];
sampleImageView.image = [symbol imageWithSize:CGSizeMake(30, 30)];
```

##### Text

```html
@import MaterialDesignSymbol;

sampleLabel.font = [MaterialDesignFont fontOfSize:20];
sampleLabel.text = [MaterialDesignIcon clear48px];
```


#### Installation (CocoaPods)
`pod MaterialDesignSymbol`
