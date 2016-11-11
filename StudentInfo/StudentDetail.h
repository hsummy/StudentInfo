//
//  StudentDetail.h
//  StudentInfo
//
//  Created by HSummy on 11/9/16.
//
//

#import <Foundation/Foundation.h>

@interface StudentDetail : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *name2;
@property (nonatomic) NSString *username;
@property (assign) NSInteger age;
@property NSString *email;

+ (StudentDetail *)studentItemWithDictionary:(NSDictionary *) studentItemWithDictionary;

@end
