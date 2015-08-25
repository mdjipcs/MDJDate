
#import <Foundation/Foundation.h>

@interface MyDate : NSObject

@property (strong ,nonatomic)   NSString* deteTime;//日期时间
@property (nonatomic)           double timestamp;//时间戳
@property (strong ,nonatomic)   NSString* date;//日期
@property (strong, nonatomic)   NSString* time;//时间

@property (nonatomic)           NSInteger year;//年
@property (nonatomic)           NSInteger month;//月
@property (nonatomic)           NSInteger day;//日

@property (strong, nonatomic)   NSString* tomorrow;//明天
@property (strong, nonatomic)   NSString* yesterday;//昨天

//直接［［MyDate alloc］init］；是获取当前时间的时间对象

//从时间戳获取MYDATE对象
+ (MyDate*) getMyDateWithTimeStamp:(double)timeStamp;

@end








