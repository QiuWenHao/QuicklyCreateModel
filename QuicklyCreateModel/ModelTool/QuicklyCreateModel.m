//
//  QuicklyCreateModel.m
//  QuicklyCreateModel
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//

#import "QuicklyCreateModel.h"

@implementation QuicklyCreateModel

+ (void)createModelWithDictionary:(NSDictionary *)dict modelName:(NSString *)modelName {
    
    printf("\n@interface %s : NSObject\n\n",modelName.UTF8String);
    for (NSString * key in dict) {
        NSString * type = @"NSString";
        NSString * modified = @"copy";
        if([dict[key] isKindOfClass:[NSNumber class]])
        {
            type = @"NSNumber";
            modified = @"assign";
        }
        if([dict[key] isKindOfClass:[NSDictionary class]])
        {
            type = @"NSDictionary";
            modified = @"strong";
        }
        if([dict[key] isKindOfClass:[NSArray class]])
        {
            type = @"NSArray";
            modified = @"strong";
        }
        printf("@property (nonatomic, %s) %s *%s;\n",modified.UTF8String,type.UTF8String,key.UTF8String);
    }
    printf("\n@end");
    
}

@end
