//
//  CNLiveVideoPlayerView.h
//  CNLiveUGC
//
//  Created by 雷浩杰 on 16/8/2.
//  Copyright © 2016年 雷浩杰. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM (NSUInteger, CNLiveVideoPlayerButtonClickActionOptions) {
    CNLiveVideoPlayerBackBtnAction = 1,                 //返回
    CNLiveVideoPlayerHostDetailBtnAction = 2,           //明星详情
    CNLiveVideoPlayerShareBtnAction = 3,                //分享
    CNLiveVideoPlayerContributionListBtnAction = 4,     //贡献榜
};

@protocol CNLiveVideoPlayerViewDelegate <NSObject>

//点击按钮的回调
- (void)buttonClickOptions:(CNLiveVideoPlayerButtonClickActionOptions)options;

@end

//回放
@interface CNLiveVideoPlayerView : UIView

/* 创建回放播放器
 *
 * appId               通过网站申请得到的appId
 * appKey              通过网站申请得到的appKey
 * hadFilm             是否有电影
 * contentId           内容ID
 * authFailed          鉴权失败回调
 *
 */
- (instancetype)initWithFrame:(CGRect)frame
                        appId:(NSString *)appId
                       appKey:(NSString *)appKey
                      hadFilm:(BOOL)hadFilm
                    contentId:(NSString *)contentId
                   authFailed:(void(^)(NSDictionary *errorInfo))authFailedBlock;

@property (nonatomic, assign)id<CNLiveVideoPlayerViewDelegate> delegate;

/* 传入贡献榜单信息
 *
 * 数据格式为
 * [
 *   { @"icon": @"", @"number": @""},
 *
 *   { @"icon": @"", @"number": @""}
 * ]
 *
 * icon是头像  number是电影券张数或飞吻钱数
 *
 */
- (void)setContributionListInfo:(NSArray *)info;

//传入收到飞吻或预售票房的钱数
- (void)setMoney:(NSString *)money;

//传入在线人数
- (void)setPeopleCount:(NSString *)count;

//退出
- (void)CNLiveVideoPlayerViewExit;

@end
