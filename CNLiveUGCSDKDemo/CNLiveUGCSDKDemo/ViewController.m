//
//  ViewController.m
//  CNLiveUGCSDKDemo
//
//  Created by 雷浩杰 on 16/8/25.
//  Copyright © 2016年 雷浩杰. All rights reserved.
//

#import "ViewController.h"
#import "CNLiveLiveViewController.h"
#import "CNLiveVideoViewController.h"
#import "CNLiveStreamerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *liveButton = [UIButton buttonWithType:UIButtonTypeSystem];
    liveButton.frame = CGRectMake(0, 100, self.view.frame.size.width, 50);
    [liveButton setTitle:@"观看直播" forState:UIControlStateNormal];
    [liveButton addTarget:self action:@selector(liveBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:liveButton];
    
    UIButton *videoButton = [UIButton buttonWithType:UIButtonTypeSystem];
    videoButton.frame = CGRectMake(0, 200, self.view.frame.size.width, 50);
    [videoButton setTitle:@"观看回放" forState:UIControlStateNormal];
    [videoButton addTarget:self action:@selector(videoBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:videoButton];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 300, self.view.frame.size.width, 50);
    [button setTitle:@"开始直播" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(streamerView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)liveBtnAction
{
    CNLiveLiveViewController *live = [[CNLiveLiveViewController alloc] init];
    [self presentViewController:live animated:YES completion:NULL];
}

- (void)videoBtnAction
{
    CNLiveVideoViewController *video = [[CNLiveVideoViewController alloc] init];
    [self presentViewController:video animated:YES completion:NULL];
}

- (void)streamerView
{
    CNLiveStreamerViewController *streamerVC = [[CNLiveStreamerViewController alloc] init];
    [self presentViewController:streamerVC animated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
