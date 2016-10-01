//
//  UIView+SilenceAutoHeight.h
//
//  Created by Silence on 16/9/30.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SilenceAutoHeight)

/**
 自动计算自动布局下的高度，需要将约束设满，可参考
 https://github.com/forkingdog/UITableView-FDTemplateLayoutCell
 里面的设置约束的说明

 @param view  需要计算行高的视图
 @param width 需要计算行高的视图的宽度

 @return 返回计算完成的高度
 */
+(CGFloat)autoLayoutHeightWithView:(UIView *)view andWidth:(CGFloat)width;
@end
