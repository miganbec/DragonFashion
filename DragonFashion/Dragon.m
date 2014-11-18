//
//  Dragon.m
//  DragonFashion
//
//  Created by miganbec on 14/11/14.
//  Copyright (c) 2014 miganbec. All rights reserved.
//

#import "Dragon.h"

@interface Dragon()
@property (readwrite) NSString *name;

@end

@implementation Dragon
- (instancetype)init{
    abort();
    return nil;
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (name.length ==0) {
        [NSException raise:NSInvalidArgumentException format:@"Los dragones deberían tener un nombre"];
    }
    self.name = name;
    return self;
}

- (void)setSignatureClothingItem:(NSString *)signatureClothingItem {
    _signatureClothingItem = signatureClothingItem;
    _signatureClothingItem = [NSString stringWithFormat:@"%@", _signatureClothingItem];
}

@end
