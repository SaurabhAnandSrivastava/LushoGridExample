# LushoGridExample

How To Use LushoGrid

## Getting Started

Add LushoGridScript folder to your project

Import script 
```objective-c
#import "LushoGridScript.h"
```

Init the script 

```objective-c
LushoGridScript *script=[[LushoGridScript alloc] init];
```

Pass your view where you want to appear Lusho Grid and pass your date 

```objective-c
 [script genrateLushoGridWhereDate:date andBaseView:YOUR VIEW];
```

make sure your view is squar for best result 




## Delegates 

Enable delegates 

```objective-c
script.delegate=self;
```
use these delegates 

```objective-c
-(void)didSuccessFullyMadeLushoGridWithFrequency:(NSMutableDictionary *)frequencyDic andConductor:(int)conductor andDriver:(int)driver andPlanes:(NSMutableDictionary *)planeDic;
-(void)didFailLushoGrid:(NSString *)error;
```

Also you can modify your grid by altering these variables 

```objective-c
shouldShowGrid
shouldDrawLine
shouldAnimateLable;
fontSize
numberColor
gridLineColor
shouldShowPlanes
lineWidth
conductorDriverColor
```

Example
```objective-c
script.lineWidth=1;
```
![Image](https://github.com/SaurabhAnandSrivastava/LushoGridExample/blob/master/Demo.png)
