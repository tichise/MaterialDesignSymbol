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

##### SwiftUI / Image

```
import SwiftUI
import MaterialDesignSymbol

@available(iOS 13.0.0, *)
struct SampleView: View {
        
    var body: some View {
        VStack {
            Image(icon: .work48px, size: 50)
            Image(icon: .album24px, size: 30, color: .green)
        }
    }
}
```

##### UIKit / UIImage

```html
import MaterialDesignSymbol

let symbol = MaterialDesignSymbol(text:MaterialDesignIcon.list48px, size:25)
symbol.addAttribute(attributeName: NSAttributedStringKey.foregroundColor, value: UIColor.red)
let iconImage = symbol.image(size: CGSize(width:25, height:25))
```

or 

```
import MaterialDesignSymbol

let iconImage = MaterialDesignSymbol(icon: .viewHeadline48px, size: 30).image()
```

##### UIKit / UILabel

```html
import MaterialDesignSymbol

titleLabel.font = MaterialDesignFont.fontOfSize(20)
titleLabel.text = MaterialDesignIcon.list48px
```

or 

```html
import MaterialDesignSymbol

titleLabel.set(icon: .clear48px, fontSize: 12)
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
