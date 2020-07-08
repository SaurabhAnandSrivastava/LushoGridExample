//
//  ViewController.m
//  LushoGridDemo
//
//  Created by Saurabh Srivastav on 08/07/20.
//  Copyright © 2020 Saurabh Srivastav. All rights reserved.
//

#import "ViewController.h"
#import "LushoGridScript.h"
@interface ViewController ()<LushoGridScriptDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *dateStr = @"1992-04-03 09:05";
       NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
       // set the date format related to what the string already you have
       [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm"];
       NSDate *date = [dateFormat dateFromString:dateStr];
    
    
    
    LushoGridScript *script=[[LushoGridScript alloc] init];
    script.delegate=self;
   //optional option
    script.lineWidth=1;
    [script genrateLushoGridWhereDate:date andBaseView:_lushoView];
    // Do any additional setup after loading the view.
}

-(void)didSuccessFullyMadeLushoGridWithFrequency:(NSMutableDictionary *)frequencyDic andConductor:(int)conductor andDriver:(int)driver andPlanes:(NSMutableDictionary *)planeDic{
    
}
-(void)didFailLushoGrid:(NSString *)error{
    
}
@end
