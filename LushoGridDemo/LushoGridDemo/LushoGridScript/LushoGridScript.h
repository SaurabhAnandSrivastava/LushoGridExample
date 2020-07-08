//
//  LushoGridScript.h
//  Test
//
//  Created by Saurabh Srivastav on 07/07/20.
//  Copyright © 2020 Saurabh Srivastav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class LushoGridScript;
@protocol LushoGridScriptDelegate <NSObject>
@optional
-(void)didSuccessFullyMadeLushoGridWithFrequency:(NSMutableDictionary *)frequencyDic andConductor:(int)conductor andDriver:(int)driver andPlanes:(NSMutableDictionary *)planeDic;
-(void)didFailLushoGrid:(NSString *)error;
@end
@interface LushoGridScript : NSObject
@property float fontSize,lineWidth;
@property UIColor * gridLineColor;
@property UIColor * numberColor;
@property bool shouldShowGrid;
@property bool shouldDrawLine;
@property bool shouldAnimateLable;
@property bool shouldShowPlanes;
@property UIColor * conductorDriverColor;


@property(strong,nonatomic)id<LushoGridScriptDelegate> delegate;
-(void)genrateLushoGridWhereDate:(NSDate *)DOB andBaseView:(UIView *)baseView;
@end

NS_ASSUME_NONNULL_END
