//
//  MyTabViewController.m
//  网易云音乐Tabbar
//
//  Created by 彭显鹤 on 15/4/18.
//  Copyright (c) 2015年 彭显鹤. All rights reserved.
//

#import "MyTabViewController.h"

@interface MyTabViewController ()

@end

@implementation MyTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setItemsImages:@[@"cm2_btm_icn_discovery",@"cm2_btm_icn_music",@"cm2_btm_icn_friend",@"cm2_btm_icn_account"] selectedImages:@[@"cm2_btm_icn_discovery_prs",@"cm2_btm_icn_music_prs",@"cm2_btm_icn_friend_prs",@"cm2_btm_icn_account_prs"]];
    self.tabBar.backgroundImage = [UIImage imageNamed:@"cm2_btm_bg"];
    [self.tabBar setShadowImage:[UIImage new]];
}

- (void)setItemsImages:(NSArray *)imageArray selectedImages:(NSArray *)selectedImageArray {
    for (int i = 0; i < self.tabBar.items.count; i ++) {
        UITabBarItem * barItem = self.tabBar.items[i];
        if (imageArray.count > i && selectedImageArray.count > i) {
            //这里是重点了，使用原始图片UIImageRenderingModeAlwaysOriginal，这样才能保证正常显示图片
            barItem.image = [[UIImage imageNamed:imageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            barItem.selectedImage = [[UIImage imageNamed:selectedImageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
