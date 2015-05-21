//
//  MyTabbarItem.m
//  网易云音乐Tabbar
//
//  Created by 彭显鹤 on 15/4/18.
//  Copyright (c) 2015年 彭显鹤. All rights reserved.
//

#import "MyTabbarItem.h"

@implementation MyTabbarItem

- (void)awakeFromNib {
    [super awakeFromNib];
    self.imageInsets = UIEdgeInsetsMake(-8, 0, 8, 0);
    [self setTitleTextAttributes:[NSDictionary
                                  dictionaryWithObjectsAndKeys: [UIColor colorWithRed:100.0 / 255.0 green:100.0 / 255.0 blue:100.0 / 255.0 alpha:1],
                                  NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    [self setTitleTextAttributes:[NSDictionary
                                  dictionaryWithObjectsAndKeys: [UIColor brownColor],
                                  NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
}

@end
