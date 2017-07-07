//
//  L_CircleView.h
//  suguo
//
//  Created by luhongyu on 17/7/7.
//  Copyright © 2017年 luhongyu. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface L_CircleView : UIView

@property (nonatomic, assign) IBInspectable CGFloat lineWidth;
@property (nonatomic, assign) IBInspectable CGFloat aaa;
@property (nonatomic, assign) IBInspectable CGFloat radius;
@property (nonatomic, strong) IBInspectable UIColor *color;

@property (nonatomic, assign) IBInspectable CGFloat lineWidth1;
@property (nonatomic, assign) IBInspectable CGFloat aaa1;
@property (nonatomic, assign) IBInspectable CGFloat radius1;

/** 可视化设置边框宽度 */
@property (nonatomic, assign)IBInspectable CGFloat borderWidth;
/** 可视化设置边框颜色 */
@property (nonatomic, strong)IBInspectable UIColor *borderColor;

/** 可视化设置圆角 */
@property (nonatomic, assign)IBInspectable CGFloat cornerRadius;

@end
