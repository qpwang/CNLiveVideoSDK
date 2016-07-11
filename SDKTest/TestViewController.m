//
//  TestViewController.m
//  SDKTest
//
//  Created by 雷浩杰 on 16/7/11.
//  Copyright © 2016年 雷浩杰. All rights reserved.
//

#import "TestViewController.h"
#import <CNLiveActivity/CNLiveActivityView.h>

@interface TestViewController ()<CNLiveActivityViewDelegate>

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CNLiveActivityView *player = [[CNLiveActivityView alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height-20) channelId:@"liveshow" sp_id:@"inbevnr031" sp_key:@"87ef486a53d637524ba75a4ebcb2d6d8c48d00e56fc2d4" nickName:@"哈哈哈"];
    player.delegate = self;
    [self.view addSubview:player];
}

- (void)backAction
{
    [self dismissViewControllerAnimated:YES completion:NULL];
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
