//
//  QuicklyCreateModel.h
//  QuicklyCreateModel
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuicklyCreateModel : NSObject

/*! @brief 代码快速创建model
 *
 * @param dict 字典
 * @param modelName model的类名
 */
+ (void)createModelWithDictionary:(NSDictionary *)dict
                        modelName:(NSString *)modelName;

@end
