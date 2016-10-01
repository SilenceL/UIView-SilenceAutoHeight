//
//  UIView+SilenceAutoHeight.h
//
//  Created by Silence on 16/9/30.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "UIView+SilenceAutoHeight.h"

@implementation UIView (SilenceAutoHeight)
+(CGFloat)autoLayoutHeightWithView:(UIView *)view andWidth:(CGFloat)width{
    
    CGFloat contentViewWidth = width;
    CGSize fittingSize = CGSizeZero;
    // Add a hard width constraint to make dynamic content views (like labels) expand vertically instead
    // of growing horizontally, in a flow-layout manner.
    NSLayoutConstraint *tempWidthConstraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:contentViewWidth];
    [view addConstraint:tempWidthConstraint];
    // Auto layout engine does its math
    fittingSize = [view systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    [view removeConstraint:tempWidthConstraint];
    return fittingSize.height;
}
@end
