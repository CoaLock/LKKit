//
//  UIView+LKKit.h
//  LKKit
//
//  Created by 崔露凯 on 16/4/21.
//  Copyright © 2016年 崔露凯. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LKAttributeMaker.h"



@interface UIView (LKKit)

- (LKViewMaker*)lk_view;

@end


@interface UILabel (LKKit)

- (LKLabelMaker*)lk_label;

@end


@interface UIButton (LKKit)



@end


@interface UIImageView (LKKit)



@end




/*: UIImageView
 
 1.image
 
 2.
 
 
 */

/* UIButton
 
 1. font
 
 2. normalImage
 
 3. selectImage
 
 4. normalTitle
 
 5. selectTitle
 
 6. normalTitleColor
 
 7. selectedTitleColor
 
 8.  numberLine
 
 9.  textAligent
 
 10. target select
 
 
 
 */

/** UILabel
 
 1.  font
 
 2.  textColor
 
 3.  textAligent
 
 4.  lineSpace
 
 5.  attributeString
 
 6.  numberLine
 
 */

/**   UIView
 
 1. borderWidth
 
 2. borderColor
 
 3. backgroundColor
 
 3. alpha
 
 4. corner
 
 5. superView
 
 6. tag
 
 
 */