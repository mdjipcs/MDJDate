
#import "MyDate.h"

@implementation MyDate


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSDate* date = [NSDate dateWithTimeIntervalSinceNow:0];
        NSString *timeSp = [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
        self.timestamp = timeSp.doubleValue;
        
        NSLog(@"timeSp:%@",timeSp); //时间戳的值
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        //用[NSDate date]可以获取系统当前时间
        self.deteTime = [dateFormatter stringFromDate:[NSDate date]];
        
        NSArray* timeArrM = [self.deteTime componentsSeparatedByString:@" "];
        self.time = timeArrM[1];
        
        NSDateFormatter* day = [[NSDateFormatter alloc]init];
        [day setDateFormat:@"yyyy-MM-dd"];
        NSString* now = [day stringFromDate:[NSDate date]];
        self.date = now;
        
        NSArray* arrM= [now componentsSeparatedByString:@"-"];
        
        NSString* year = arrM[0];
        NSString* month = arrM[1];
        NSString* dayStr = arrM[2];
        
        self.year = year.integerValue;
        self.month = month.integerValue;
        self.day = dayStr.integerValue;
        
        NSInteger tomorrowDay = dayStr.integerValue + 1;
        NSInteger yesterdayDay = dayStr.integerValue -1;
        
        self.tomorrow = [NSString stringWithFormat:@"%@-%@-%lu",year,month,tomorrowDay];
        self.yesterday = [NSString stringWithFormat:@"%@-%@-%lu",year,month,yesterdayDay];
        
//        3.把时间戳转化为时间的方法
//        NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:1363948516];
//        NSLog(@"1363948516  = %@",confromTimesp);
//        
    }
    return self;
}

+ (MyDate*) getMyDateWithTimeStamp:(double)timeStamp{
    
    MyDate* date = [[MyDate alloc]init];
    
    date.timestamp = timeStamp;
    
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:timeStamp];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    //用[NSDate date]可以获取系统当前时间
    date.deteTime = [dateFormatter stringFromDate:confromTimesp];
    
    NSArray* timeArrM = [date.deteTime componentsSeparatedByString:@" "];
    date.time = timeArrM[1];
    
    NSDateFormatter* day = [[NSDateFormatter alloc]init];
    [day setDateFormat:@"yyyy-MM-dd"];
    NSString* now = [day stringFromDate:confromTimesp];
    date.date = now;
    
    NSArray* arrM= [now componentsSeparatedByString:@"-"];
    
    NSString* year = arrM[0];
    NSString* month = arrM[1];
    NSString* dayStr = arrM[2];
    
    date.year = year.integerValue;
    date.month = month.integerValue;
    date.day = dayStr.integerValue;
    
    NSInteger tomorrowDay = dayStr.integerValue + 1;
    NSInteger yesterdayDay = dayStr.integerValue -1;
    
    date.tomorrow = [NSString stringWithFormat:@"%@-%@-%lu",year,month,tomorrowDay];
    date.yesterday = [NSString stringWithFormat:@"%@-%@-%lu",year,month,yesterdayDay];
    
    return date;

}


@end






