//
//  Dragon.h
//  DragonFashion
//
//  Created by miganbec on 14/11/14.
//  Copyright (c) 2014 miganbec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject
@property (readonly) NSString *name;
@property (nonatomic) NSString *signatureClothingItem;
- (instancetype)initWithName:(NSString *)name;
@end
