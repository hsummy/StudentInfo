//
//  StudentDetail.m
//  StudentInfo
//
//  Created by HSummy on 11/9/16.
//
//

#import "StudentDetail.h"

@implementation StudentDetail

+ (StudentDetail *)studentItemWithDictionary:(NSDictionary *)studentItemWithDictionary

{
    StudentDetail *anItem = nil;
    if (studentItemWithDictionary)
    {
        anItem = [[StudentDetail alloc] init];
        anItem.name = studentItemWithDictionary[@"name"];
       // anItem.name2 = studentItemWithDictionary[@"name2"];
        anItem.username = studentItemWithDictionary[@"username"];
        anItem.age = [studentItemWithDictionary[@"age"] integerValue];
        anItem.email = studentItemWithDictionary[@"email"];
    }
    
    return anItem;
    
    
    
}


@end
