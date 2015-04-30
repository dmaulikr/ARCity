//
//  Building.m
//  ARCity
//
//  Created by Aleš Kocur on 18/03/15.
//  Copyright (c) 2015 metaio GmbH. All rights reserved.
//

#import "Zone+DataAccess.h"

@implementation Zone (DataAccess)

+ (instancetype)zoneWithType:(ZoneType)type {
    Zone *zone = [Zone MR_createEntity];
    zone.type_id = @(type);
    
    return zone;
}

- (ZoneType)type {
    return (ZoneType)[self.type_id integerValue];
}

- (ZoneLevel)level {
    return (ZoneLevel)[self.level_id integerValue];
}

- (void)setLevel:(ZoneLevel)level {
    if (ZoneLevel1 <= level && level <= ZoneLevel3) {
        self.level_id = @(level);
    }
}

@end
