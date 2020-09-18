#### MaterialDesignSymbol

Icon font library for Swift. Currently supports GoogleMaterialDesignIcons. ObjectiveC version is [here](https://github.com/tichise/MaterialDesignSymbolObjC).

#### Image

![image](https://user-images.githubusercontent.com/43707/89850548-8edb5300-dbc5-11ea-8cab-2b3be7faf06f.png)

#### Licence
font used in this project

Author of the font used in this  project: Google
Link: https://github.com/google/material-design-icons

Creative Commons Attribution 4.0 International (CC BY 4.0)

#### Examples Swift

##### SwiftUI / Image

If you use ver 2.4.0 or higher, it's available for the SwiftUI.

```
import SwiftUI
import MaterialDesignSymbol

@available(iOS 13.0.0, *)
struct SampleView: View {
        
    var body: some View {
        VStack {
            Image(materialDesignIcon: .work48px, size: 50)
            Image(materialDesignIcon: .album24px, size: 30, color: .green)
        }
    }
}

@available(iOS 14.0.0, *)
struct SampleView: View {
        
    var body: some View {
        VStack {
            Image(materialDesignIcon: .work48px, size: 50)
            Image(materialDesignIcon: .album24px, size: 30, color: Color.green)
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

Support for Objective C has ended with version 2.3.2.
If you want to call from Objective C, please use ver 2.3.2 or earlier.

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
