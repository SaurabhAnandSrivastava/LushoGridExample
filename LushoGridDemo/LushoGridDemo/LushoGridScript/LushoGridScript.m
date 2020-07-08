//
//  LushoGridScript.m
//  Test
//
//  Created by Saurabh Srivastav on 07/07/20.
//  Copyright © 2020 Saurabh Srivastav. All rights reserved.
//

#import "LushoGridScript.h"

@implementation LushoGridScript{
    
}
-(id)init{
    self = [super init];
    _shouldShowGrid=YES;
    _shouldDrawLine=YES;
    _shouldAnimateLable=YES;
    _fontSize=30;
    _numberColor=[UIColor blackColor];
    
    _gridLineColor=[UIColor lightGrayColor];
    _shouldShowPlanes=YES;
    _lineWidth=0.5;
    _conductorDriverColor=[UIColor redColor];
    return self;
}
-(void)genrateLushoGridWhereDate:(NSDate *)DOB andBaseView:(UIView *)baseView{
    
    
    if (DOB==nil) {
        [self.delegate didFailLushoGrid:@"Date is incorrect"];
        return;
    }
    
    
    
    
    
    baseView.backgroundColor=[UIColor whiteColor];
    [self addshadow:baseView];
    
    
    
    
    CGPoint point1=CGPointMake(10, 10);
    
    CGPoint point2=CGPointMake(10 , 10);
    CGPoint point3=CGPointMake(10, baseView.frame.size.height
                               -10);
    
    [self drawLinesOnViewWherePoint1:point1 andPoint2:point2 andPoint3:point3 uponView:baseView];
    
    
    
    
    point2=CGPointMake(baseView.frame.size.width/2, 10);
    point3=CGPointMake(baseView.frame.size.width-10, 10);
    [self drawLinesOnViewWherePoint1:point1 andPoint2:point2 andPoint3:point3 uponView:baseView];
    
    
    
    point2=CGPointMake(baseView.frame.size.width-10, baseView.frame.size.height/2);
    point1=CGPointMake(baseView.frame.size.width-10, baseView.frame.size.height-10);
    [self drawLinesOnViewWherePoint1:point3 andPoint2:point2 andPoint3:point1 uponView:baseView];
    
    point2=CGPointMake(baseView.frame.size.width/2, baseView.frame.size.height-10);
    point3=CGPointMake(10, baseView.frame.size.height-10);
    
    [self drawLinesOnViewWherePoint1:point1 andPoint2:point2 andPoint3:point3 uponView:baseView];
    
    
    //mid
    
    
    point1=CGPointMake((baseView.frame.size.width)/3, 10);
    point2=CGPointMake((baseView.frame.size.width)/3, baseView.frame.size.height/2);
    point3=CGPointMake((baseView.frame.size.width)/3, baseView.frame.size.height-10);
    [self drawLinesOnViewWherePoint1:point1 andPoint2:point2 andPoint3:point3 uponView:baseView];
    
    
    
    point1=CGPointMake(((baseView.frame.size.width)/3)*2, 10);
    point2=CGPointMake(((baseView.frame.size.width)/3)*2, baseView.frame.size.height/2);
    point3=CGPointMake(((baseView.frame.size.width)/3)*2, baseView.frame.size.height-10);
    [self drawLinesOnViewWherePoint1:point1 andPoint2:point2 andPoint3:point3 uponView:baseView];
    
    
    
    
    
    point1=CGPointMake(10,(baseView.frame.size.height)/3 );
    point2=CGPointMake(baseView.frame.size.width/2, (baseView.frame.size.height)/3 );
    point3=CGPointMake((baseView.frame.size.width-10), (baseView.frame.size.height)/3);
    [self drawLinesOnViewWherePoint1:point1 andPoint2:point2 andPoint3:point3 uponView:baseView];
    
    
    point1=CGPointMake(10,((baseView.frame.size.height)/3)*2 );
    point2=CGPointMake(baseView.frame.size.width/2, ((baseView.frame.size.height)/3)*2 );
    point3=CGPointMake((baseView.frame.size.width-10), ((baseView.frame.size.height)/3)*2);
    [self drawLinesOnViewWherePoint1:point1 andPoint2:point2 andPoint3:point3 uponView:baseView];
    
    if (![self fillNumberFromDOB:DOB andBaseView:baseView]) {
        [self.delegate didFailLushoGrid:@"Date is incorrect"];
        return;
    }
    
    
    
    if (!_shouldShowPlanes) {
        return;
    }
    
    
    UILabel *lbl1=[[UILabel alloc] init];
    lbl1.frame=CGRectMake(baseView.frame.size.width-50, 50,(baseView.frame.size.width-30)/3 , 10);
    lbl1.text=@"Memory Plane";
    lbl1.textColor=[UIColor lightGrayColor];
    // lbl1.backgroundColor=[UIColor redColor];
    [lbl1 setTransform:CGAffineTransformMakeRotation(-M_PI/2 )];
    [baseView addSubview:lbl1];
    lbl1.textAlignment = NSTextAlignmentCenter;
    [lbl1 setFont:[UIFont systemFontOfSize:10]];
    
    
    UILabel *lbl2=[[UILabel alloc] init];
    lbl2.frame=CGRectMake(baseView.frame.size.width-50, lbl1.frame.origin.y+lbl1.frame.size.height+45,((baseView.frame.size.width-30)/3) , 10);
    lbl2.text=@"Spiritual Plane";
    lbl2.textColor=[UIColor lightGrayColor];
    // lbl2.backgroundColor=[UIColor redColor];
    [lbl2 setTransform:CGAffineTransformMakeRotation(-M_PI/2 )];
    [baseView addSubview:lbl2];
    lbl2.textAlignment = NSTextAlignmentCenter;
    [lbl2 setFont:[UIFont systemFontOfSize:10]];
    
    UILabel *lbl3=[[UILabel alloc] init];
    lbl3.frame=CGRectMake(baseView.frame.size.width-50, lbl2.frame.origin.y+lbl2.frame.size.height+45,((baseView.frame.size.width-30)/3) , 10);
    lbl3.text=@"Practical Plane";
    lbl3.textColor=[UIColor lightGrayColor];
    // lbl2.backgroundColor=[UIColor redColor];
    [lbl3 setTransform:CGAffineTransformMakeRotation(-M_PI/2 )];
    [baseView addSubview:lbl3];
    lbl3.textAlignment = NSTextAlignmentCenter;
    [lbl3 setFont:[UIFont systemFontOfSize:10]];
    
    UILabel *lbl4=[[UILabel alloc] init];
    lbl4.frame=CGRectMake(10, baseView.frame.size.height-10,((baseView.frame.size.width-30)/3) , 10);
    lbl4.text=@"Thought Plane";
    lbl4.textColor=[UIColor lightGrayColor];
    // lbl2.backgroundColor=[UIColor redColor];
    
    [baseView addSubview:lbl4];
    lbl4.textAlignment = NSTextAlignmentCenter;
    [lbl4 setFont:[UIFont systemFontOfSize:10]];
    
    UILabel *lbl5=[[UILabel alloc] init];
    lbl5.frame=CGRectMake(lbl4.frame.origin.x+lbl4.frame.size.width, baseView.frame.size.height-10,((baseView.frame.size.width-30)/3) , 10);
    lbl5.text=@"Will Power Plane";
    lbl5.textColor=[UIColor lightGrayColor];
    // lbl2.backgroundColor=[UIColor redColor];
    
    [baseView addSubview:lbl5];
    lbl5.textAlignment = NSTextAlignmentCenter;
    [lbl5 setFont:[UIFont systemFontOfSize:10]];
    
    UILabel *lbl6=[[UILabel alloc] init];
    lbl6.frame=CGRectMake(lbl5.frame.origin.x+lbl5.frame.size.width+10, baseView.frame.size.height-10,((baseView.frame.size.width-30)/3) , 10);
    lbl6.text=@"Action Plane";
    lbl6.textColor=[UIColor lightGrayColor];
    // lbl2.backgroundColor=[UIColor redColor];
    
    [baseView addSubview:lbl6];
    lbl6.textAlignment = NSTextAlignmentCenter;
    [lbl6 setFont:[UIFont systemFontOfSize:10]];
    
    
    
}

-(int)getSingleDigitNumber:(int)number{
    int val;
    
    int sum = number;
    while (sum > 9) {
        val = sum;
        sum = 0;
        while (val != 0) {
            sum += (val % 10);
            val = val / 10;
        }
    }
    return sum;
}

-(void)setSubLblWithRefrenceOfLbl:(UILabel *)refLbl andBaseView:(UIView *)view andLblValue:(NSString *)text{
    UILabel *lbl=[[UILabel alloc] init];
    lbl.frame=CGRectMake(refLbl.frame.origin.x+5, refLbl.frame.origin.y, 50, 20);
    lbl.text=text;
    [view addSubview:lbl];
    lbl.textAlignment = NSTextAlignmentLeft;
    [lbl setFont:[UIFont systemFontOfSize:15]];
    lbl.textColor=_conductorDriverColor;
}


-(BOOL)fillNumberFromDOB:(NSDate *)dob andBaseView:(UIView *)baseView{
    
    
    if (_fontSize==0) {
        _fontSize=30;
    }
    
    float memoryPlane=0,sprPlane=0,prctlPlane=0,actionPlane=0,willPlane=0,thoPlane=0;
    
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyyMMdd"];
    NSString *finalDate = [dateFormat stringFromDate:dob];
    
    
    if (finalDate==nil) {
        [self.delegate didFailLushoGrid:@"Date is incorrect"];
        return false;
    }
    
    
    int conductor=[finalDate intValue];
    
    
    
    conductor=[self getSingleDigitNumber:conductor];
    
    
    
    
    
    
    
    NSError *error = NULL;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"4" options:NSRegularExpressionCaseInsensitive error:&error];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:finalDate options:0 range:NSMakeRange(0, [finalDate length])];
    
    
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];
    
    dic[@"NUMBER"]=@"COUNT";
    
    UILabel *lbl1=[[UILabel alloc] init];
    NSString *str=@"";
    for (int i=0; i<(int)numberOfMatches; i++) {
        
        if (str!=nil) {
            str=[NSString stringWithFormat:@"%@%@",str, @"4"];
        }
        else
            str=@"4";
        if (i==0){
            memoryPlane++;
            thoPlane++;
        }
        
    }
    lbl1.text=str;
    lbl1.frame=CGRectMake(10, 10, (baseView.frame.size.width-25)/3, (baseView.frame.size.height-30)/3);
    //lbl1.backgroundColor=[UIColor redColor];
    [baseView addSubview:lbl1];
    
    dic[@"4"]=[NSString stringWithFormat:@"%d",(int)numberOfMatches];
    
    
    regex = [NSRegularExpression regularExpressionWithPattern:@"3" options:NSRegularExpressionCaseInsensitive error:&error];
    numberOfMatches = [regex numberOfMatchesInString:finalDate options:0 range:NSMakeRange(0, [finalDate length])];
    
    
    
    
    UILabel *lbl2=[[UILabel alloc] init];
    str=@"";
    for (int i=0; i<(int)numberOfMatches; i++) {
        
        if (str!=nil) {
            str=[NSString stringWithFormat:@"%@%@",str, @"3"];
        }
        else
            str=@"3";
        if (i==0){
            sprPlane++;
            thoPlane++;
        }
    }
    lbl2.text=str;
    lbl2.frame=CGRectMake(10, lbl1.frame.origin.y+lbl1.frame.size.height+5, (baseView.frame.size.width-25)/3, (baseView.frame.size.height-30)/3);
    //lbl1.backgroundColor=[UIColor redColor];
    [baseView addSubview:lbl2];
    
    dic[@"3"]=[NSString stringWithFormat:@"%d",(int)numberOfMatches];
    
    regex = [NSRegularExpression regularExpressionWithPattern:@"8" options:NSRegularExpressionCaseInsensitive error:&error];
    numberOfMatches = [regex numberOfMatchesInString:finalDate options:0 range:NSMakeRange(0, [finalDate length])];
    
    
    UILabel *lbl3=[[UILabel alloc] init];
    str=@"";
    for (int i=0; i<(int)numberOfMatches; i++) {
        
        if (str!=nil) {
            str=[NSString stringWithFormat:@"%@%@",str, @"8"];
        }
        else
            str=@"8";
        if (i==0){
            prctlPlane++;
            thoPlane++;
        }
    }
    lbl3.text=str;
    lbl3.frame=CGRectMake(10, lbl2.frame.origin.y+lbl2.frame.size.height+5, (baseView.frame.size.width-25)/3, (baseView.frame.size.height-30)/3);
    //lbl1.backgroundColor=[UIColor redColor];
    [baseView addSubview:lbl3];
    
    dic[@"8"]=[NSString stringWithFormat:@"%d",(int)numberOfMatches];
    
    regex = [NSRegularExpression regularExpressionWithPattern:@"9" options:NSRegularExpressionCaseInsensitive error:&error];
    numberOfMatches = [regex numberOfMatchesInString:finalDate options:0 range:NSMakeRange(0, [finalDate length])];
    
    
    UILabel *lbl4=[[UILabel alloc] init];
    str=@"";
    for (int i=0; i<(int)numberOfMatches; i++) {
        
        if (str!=nil) {
            str=[NSString stringWithFormat:@"%@%@",str, @"9"];
        }
        else
            str=@"9";
        if (i==0){
            memoryPlane++;
            willPlane++;
        }
    }
    lbl4.text=str;
    lbl4.frame=CGRectMake(lbl1.frame.origin.x+lbl1.frame.size.width, 10, (baseView.frame.size.width-25)/3, (baseView.frame.size.height-30)/3);
    //lbl1.backgroundColor=[UIColor redColor];
    [baseView addSubview:lbl4];
    dic[@"9"]=[NSString stringWithFormat:@"%d",(int)numberOfMatches];
    
    
    regex = [NSRegularExpression regularExpressionWithPattern:@"5" options:NSRegularExpressionCaseInsensitive error:&error];
    numberOfMatches = [regex numberOfMatchesInString:finalDate options:0 range:NSMakeRange(0, [finalDate length])];
    
    UILabel *lbl5=[[UILabel alloc] init];
    str=@"";
    for (int i=0; i<(int)numberOfMatches; i++) {
        
        if (str!=nil) {
            str=[NSString stringWithFormat:@"%@%@",str, @"5"];
        }
        else
            str=@"5";
        if (i==0){
            willPlane++;
            sprPlane++;
        }
    }
    lbl5.text=str;
    lbl5.frame=CGRectMake(lbl2.frame.origin.x+lbl2.frame.size.width, lbl2.frame.origin.y, (baseView.frame.size.width-25)/3, (baseView.frame.size.height-30)/3);
    //lbl1.backgroundColor=[UIColor redColor];
    [baseView addSubview:lbl5];
    
    dic[@"5"]=[NSString stringWithFormat:@"%d",(int)numberOfMatches];
    
    
    regex = [NSRegularExpression regularExpressionWithPattern:@"1" options:NSRegularExpressionCaseInsensitive error:&error];
    numberOfMatches = [regex numberOfMatchesInString:finalDate options:0 range:NSMakeRange(0, [finalDate length])];
    
    
    UILabel *lbl6=[[UILabel alloc] init];
    str=@"";
    for (int i=0; i<(int)numberOfMatches; i++) {
        
        if (str!=nil) {
            str=[NSString stringWithFormat:@"%@%@",str, @"1"];
        }
        else
            str=@"1";
        if (i==0){
            prctlPlane++;
            willPlane++;
        }
        
    }
    lbl6.text=str;
    lbl6.frame=CGRectMake(lbl3.frame.origin.x+lbl3.frame.size.width, lbl3.frame.origin.y, (baseView.frame.size.width-25)/3, (baseView.frame.size.height-30)/3);
    //lbl1.backgroundColor=[UIColor redColor];
    [baseView addSubview:lbl6];
    
    dic[@"1"]=[NSString stringWithFormat:@"%d",(int)numberOfMatches];
    
    
    regex = [NSRegularExpression regularExpressionWithPattern:@"2" options:NSRegularExpressionCaseInsensitive error:&error];
    numberOfMatches = [regex numberOfMatchesInString:finalDate options:0 range:NSMakeRange(0, [finalDate length])];
    
    UILabel *lbl7=[[UILabel alloc] init];
    str=@"";
    for (int i=0; i<(int)numberOfMatches; i++) {
        
        if (str!=nil) {
            str=[NSString stringWithFormat:@"%@%@",str, @"2"];
        }
        else
            str=@"2";
        if (i==0){
            memoryPlane++;
            actionPlane++;
        }
    }
    lbl7.text=str;
    lbl7.frame=CGRectMake(lbl4.frame.origin.x+lbl4.frame.size.width+5, lbl4.frame.origin.y, (baseView.frame.size.width-25)/3, (baseView.frame.size.height-30)/3);
    //lbl1.backgroundColor=[UIColor redColor];
    [baseView addSubview:lbl7];
    
    dic[@"2"]=[NSString stringWithFormat:@"%d",(int)numberOfMatches];
    
    regex = [NSRegularExpression regularExpressionWithPattern:@"7" options:NSRegularExpressionCaseInsensitive error:&error];
    numberOfMatches = [regex numberOfMatchesInString:finalDate options:0 range:NSMakeRange(0, [finalDate length])];
    
    
    UILabel *lbl8=[[UILabel alloc] init];
    str=@"";
    for (int i=0; i<(int)numberOfMatches; i++) {
        
        if (str!=nil) {
            str=[NSString stringWithFormat:@"%@%@",str, @"7"];
        }
        else
            str=@"7";
        if (i==0){
            sprPlane++;
            actionPlane++;
        }
    }
    lbl8.text=str;
    lbl8.frame=CGRectMake(lbl5.frame.origin.x+lbl5.frame.size.width+5, lbl5.frame.origin.y, (baseView.frame.size.width-25)/3, (baseView.frame.size.height-30)/3);
    //lbl1.backgroundColor=[UIColor redColor];
    [baseView addSubview:lbl8];
    
    dic[@"7"]=[NSString stringWithFormat:@"%d",(int)numberOfMatches];
    
    
    regex = [NSRegularExpression regularExpressionWithPattern:@"6" options:NSRegularExpressionCaseInsensitive error:&error];
    numberOfMatches = [regex numberOfMatchesInString:finalDate options:0 range:NSMakeRange(0, [finalDate length])];
    
    UILabel *lbl9=[[UILabel alloc] init];
    str=@"";
    for (int i=0; i<(int)numberOfMatches; i++) {
        
        if (str!=nil) {
            str=[NSString stringWithFormat:@"%@%@",str, @"6"];
        }
        else
            str=@"6";
        if (i==0){
            prctlPlane++;
            actionPlane++;
        }
    }
    lbl9.text=str;
    lbl9.frame=CGRectMake(lbl6.frame.origin.x+lbl6.frame.size.width+5, lbl6.frame.origin.y, (baseView.frame.size.width-25)/3, (baseView.frame.size.height-30)/3);
    //lbl1.backgroundColor=[UIColor redColor];
    [baseView addSubview:lbl9];
    
    dic[@"6"]=[NSString stringWithFormat:@"%d",(int)numberOfMatches];
    
    
    NSArray *arrayView = baseView.subviews;
    
    
    for (UIView *auxView in arrayView) {
        if ([auxView isKindOfClass:[UILabel class]]) {
            UILabel *lbl=(UILabel *)auxView;
            [self setAnimationToLbl:lbl];
            lbl.textAlignment = NSTextAlignmentCenter;
            [lbl setFont:[UIFont systemFontOfSize:_fontSize]];
            lbl.numberOfLines=0;
            lbl.textColor=_numberColor;
        }
    }
    
    
    
    
    
    [dateFormat setDateFormat:@"dd"];
    finalDate = [dateFormat stringFromDate:dob];
    int driver=[finalDate intValue];
    driver=[self getSingleDigitNumber:driver];
    
    NSString *subStr=[NSString stringWithFormat:@"%d",conductor];
    if (conductor==driver) {
        subStr=[NSString stringWithFormat:@"%d%d",driver,conductor];
    }
    
    
    
    switch (conductor) {
        case 1:
            
            [self setSubLblWithRefrenceOfLbl:lbl6 andBaseView:baseView andLblValue:subStr];
            dic[@"1"]=[NSString stringWithFormat:@"%d",[dic [@"1"] intValue]+1];
            [self incrementPlaneForConAndDriv:willPlane];
            [self incrementPlaneForConAndDriv:prctlPlane];
            
            
            break;
        case 2:
            
            [self setSubLblWithRefrenceOfLbl:lbl7 andBaseView:baseView andLblValue:subStr];
            dic[@"2"]=[NSString stringWithFormat:@"%d",[dic [@"2"] intValue]+1];
            [self incrementPlaneForConAndDriv:memoryPlane];
            [self incrementPlaneForConAndDriv:actionPlane];
            
            break;
        case 3:
            
            [self setSubLblWithRefrenceOfLbl:lbl2 andBaseView:baseView andLblValue:subStr];
            dic[@"3"]=[NSString stringWithFormat:@"%d",[dic [@"3"] intValue]+1];
            
            [self incrementPlaneForConAndDriv:thoPlane];
            [self incrementPlaneForConAndDriv:sprPlane];
            
            break;
        case 4:
            
            [self setSubLblWithRefrenceOfLbl:lbl1 andBaseView:baseView andLblValue:subStr];
            dic[@"4"]=[NSString stringWithFormat:@"%d",[dic [@"4"] intValue]+1];
            [self incrementPlaneForConAndDriv:memoryPlane];
            [self incrementPlaneForConAndDriv:thoPlane];
            break;
        case 5:
            
            [self setSubLblWithRefrenceOfLbl:lbl5 andBaseView:baseView andLblValue:subStr];
            dic[@"5"]=[NSString stringWithFormat:@"%d",[dic [@"5"] intValue]+1];
            [self incrementPlaneForConAndDriv:sprPlane];
            [self incrementPlaneForConAndDriv:willPlane];
            break;
        case 6:
            
            [self setSubLblWithRefrenceOfLbl:lbl9 andBaseView:baseView andLblValue:subStr];
            dic[@"6"]=[NSString stringWithFormat:@"%d",[dic [@"6"] intValue]+1];
            [self incrementPlaneForConAndDriv:actionPlane];
            [self incrementPlaneForConAndDriv:prctlPlane];
            break;
        case 7:
            
            [self setSubLblWithRefrenceOfLbl:lbl8 andBaseView:baseView andLblValue:subStr];
            dic[@"7"]=[NSString stringWithFormat:@"%d",[dic [@"7"] intValue]+1];
            [self incrementPlaneForConAndDriv:sprPlane];
            [self incrementPlaneForConAndDriv:actionPlane];
            break;
        case 8:
            
            [self setSubLblWithRefrenceOfLbl:lbl3 andBaseView:baseView andLblValue:subStr];
            dic[@"8"]=[NSString stringWithFormat:@"%d",[dic [@"8"] intValue]+1];
            [self incrementPlaneForConAndDriv:thoPlane];
            [self incrementPlaneForConAndDriv:prctlPlane];
            break;
        case 9:
            
            [self setSubLblWithRefrenceOfLbl:lbl4 andBaseView:baseView andLblValue:subStr];
            dic[@"9"]=[NSString stringWithFormat:@"%d",[dic [@"9"] intValue]+1];
            [self incrementPlaneForConAndDriv:memoryPlane];
            [self incrementPlaneForConAndDriv:willPlane];
            break;
            
        default:
            break;
    }
    
    
    
    if (conductor!=driver) {
        subStr=[NSString stringWithFormat:@"%d",driver];
        switch (driver) {
            case 1:
                
                [self setSubLblWithRefrenceOfLbl:lbl6 andBaseView:baseView andLblValue:subStr];
                dic[@"1"]=[NSString stringWithFormat:@"%d",[dic [@"1"] intValue]+1];
                [self incrementPlaneForConAndDriv:willPlane];
                [self incrementPlaneForConAndDriv:prctlPlane];
                break;
            case 2:
                
                [self setSubLblWithRefrenceOfLbl:lbl7 andBaseView:baseView andLblValue:subStr];
                dic[@"2"]=[NSString stringWithFormat:@"%d",[dic [@"2"] intValue]+1];
                [self incrementPlaneForConAndDriv:memoryPlane];
                [self incrementPlaneForConAndDriv:actionPlane];
                break;
            case 3:
                
                [self setSubLblWithRefrenceOfLbl:lbl2 andBaseView:baseView andLblValue:subStr];
                dic[@"3"]=[NSString stringWithFormat:@"%d",[dic [@"3"] intValue]+1];
                [self incrementPlaneForConAndDriv:thoPlane];
                [self incrementPlaneForConAndDriv:sprPlane];
                break;
            case 4:
                
                [self setSubLblWithRefrenceOfLbl:lbl1 andBaseView:baseView andLblValue:subStr];
                dic[@"4"]=[NSString stringWithFormat:@"%d",[dic [@"4"] intValue]+1];
                [self incrementPlaneForConAndDriv:memoryPlane];
                [self incrementPlaneForConAndDriv:thoPlane];
                break;
            case 5:
                
                [self setSubLblWithRefrenceOfLbl:lbl5 andBaseView:baseView andLblValue:subStr];
                dic[@"5"]=[NSString stringWithFormat:@"%d",[dic [@"5"] intValue]+1];
                [self incrementPlaneForConAndDriv:sprPlane];
                [self incrementPlaneForConAndDriv:willPlane];
                break;
            case 6:
                
                [self setSubLblWithRefrenceOfLbl:lbl9 andBaseView:baseView andLblValue:subStr];
                dic[@"6"]=[NSString stringWithFormat:@"%d",[dic [@"6"] intValue]+1];
                [self incrementPlaneForConAndDriv:actionPlane];
                [self incrementPlaneForConAndDriv:prctlPlane];
                break;
            case 7:
                
                [self setSubLblWithRefrenceOfLbl:lbl8 andBaseView:baseView andLblValue:subStr];
                dic[@"7"]=[NSString stringWithFormat:@"%d",[dic [@"7"] intValue]+1];
                [self incrementPlaneForConAndDriv:sprPlane];
                [self incrementPlaneForConAndDriv:actionPlane];
                break;
            case 8:
                
                [self setSubLblWithRefrenceOfLbl:lbl3 andBaseView:baseView andLblValue:subStr];
                dic[@"8"]=[NSString stringWithFormat:@"%d",[dic [@"8"] intValue]+1];
                [self incrementPlaneForConAndDriv:thoPlane];
                [self incrementPlaneForConAndDriv:prctlPlane];
                break;
            case 9:
                
                [self setSubLblWithRefrenceOfLbl:lbl4 andBaseView:baseView andLblValue:subStr];
                dic[@"9"]=[NSString stringWithFormat:@"%d",[dic [@"9"] intValue]+1];
                [self incrementPlaneForConAndDriv:memoryPlane];
                [self incrementPlaneForConAndDriv:willPlane];
                break;
                
            default:
                break;
        }
    }
    
    
    // calculating plan
    
    
    
    
    
    NSMutableDictionary *planDic=[[NSMutableDictionary alloc] init];
    if (memoryPlane>=3) {
        planDic[@"memoryPlane"]=@"100";
    }
    else {
        planDic[@"memoryPlane"]=[NSString stringWithFormat:@"%f", (memoryPlane/3)*100];
    }
    
    if (sprPlane>=3) {
        planDic[@"spiritualPlane"]=@"100";
    }
    else {
        planDic[@"spiritualPlane"]=[NSString stringWithFormat:@"%f", (sprPlane/3)*100];
    }
    
    if (prctlPlane>=3) {
        planDic[@"practicePlane"]=@"100";
    }
    else {
        planDic[@"practicePlane"]=[NSString stringWithFormat:@"%f", (prctlPlane/3)*100];
    }
    
    if (actionPlane>=3) {
        planDic[@"actionPlane"]=@"100";
    }
    else {
        planDic[@"actionPlane"]=[NSString stringWithFormat:@"%f", (actionPlane/3)*100];
    }
    
    if (willPlane>=3) {
        planDic[@"willPowerPlane"]=@"100";
    }
    else {
        planDic[@"willPowerPlane"]=[NSString stringWithFormat:@"%f", (willPlane/3)*100];
    }
    
    if (thoPlane>=3) {
        planDic[@"thoughtPlane"]=@"100";
    }
    else {
        planDic[@"thoughtPlane"]=[NSString stringWithFormat:@"%f", (thoPlane/3)*100];
    }
    
    [self.delegate didSuccessFullyMadeLushoGridWithFrequency:dic andConductor:conductor andDriver:driver andPlanes:planDic];
    
    return true;
    
    
}

-(void)incrementPlaneForConAndDriv:(float)value{
    (value==0)?value++:value;
}


-(void)setAnimationToLbl:(UILabel *)lbl{
    if (!_shouldAnimateLable) {
        return;
    }
    
    NSString *str=lbl.text;
    
    [UIView beginAnimations:@"animateText" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:2.0f];
    [lbl setAlpha:0];
    [lbl setText:str];
    [lbl setAlpha:1];
    [UIView commitAnimations];
}


- (NSString *)extractString:(NSString *)fullString toLookFor:(NSString *)lookFor skipForwardX:(NSInteger)skipForward toStopBefore:(NSString *)stopBefore
{
    
    NSRange firstRange = [fullString rangeOfString:lookFor];
    NSRange secondRange = [[fullString substringFromIndex:firstRange.location + skipForward] rangeOfString:stopBefore];
    NSRange finalRange = NSMakeRange(firstRange.location + skipForward, secondRange.location + [stopBefore length]);
    
    return [fullString substringWithRange:finalRange];
}


-(void) addshadow:(UIView *)view{
    view.layer.masksToBounds = NO;
    view.layer.shadowColor = [[UIColor blackColor] CGColor];
    view.layer.shadowOffset = CGSizeMake(0,0);
    view.layer.shadowOpacity = 0.5;
    view.layer.shadowRadius = 6;
    
}

-(void)drawLinesOnViewWherePoint1:(CGPoint)point1 andPoint2:(CGPoint)point2 andPoint3:(CGPoint)point3 uponView:(UIView *)view{
    
    if (!_shouldShowGrid) {
        return;
    }
    
    UIBezierPath *path;
    CAShapeLayer *shape;
    
    path = [UIBezierPath bezierPath];
    
    [path moveToPoint:point1];
    [path addQuadCurveToPoint:point3 controlPoint:point2];
    shape = [CAShapeLayer layer];
    shape.path = path.CGPath;
    shape.lineWidth = _lineWidth;
    shape.strokeColor = _gridLineColor.CGColor;
    shape.fillColor = [UIColor clearColor].CGColor;
    shape.frame = view.bounds;
    [view.layer addSublayer:shape];
    
    CGFloat angle = atan2f(point3.y - point2.y, point3.x - point2.x);
    
    
    CGFloat distance = 5.0;
    path = [UIBezierPath bezierPath];
    [path moveToPoint:point3];
    [path addLineToPoint:[self calculatePointFromPoint:point3 angle:angle + M_PI_2 distance:distance]]; // to the right
    [path addLineToPoint:[self calculatePointFromPoint:point3 angle:angle          distance:distance]]; // straight ahead
    [path addLineToPoint:[self calculatePointFromPoint:point3 angle:angle - M_PI_2 distance:distance]]; // to the left
    [path closePath];
    
    if (_shouldDrawLine) {
        CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        pathAnimation.duration = 1.0;
        pathAnimation.fromValue = @(0.0f);
        pathAnimation.toValue = @(1.0f);
        [shape addAnimation:pathAnimation forKey:@"strokeEnd"];
    }
    
    
    
}
- (CGPoint)calculatePointFromPoint:(CGPoint)point angle:(CGFloat)angle distance:(CGFloat)distance {
    return CGPointMake(point.x + cosf(angle) * distance, point.y + sinf(angle) * distance);
}
@end
