//
//  MagicalCreature.m
//  MCMS
//
//  Created by Paul Lefebvre on 6/1/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype)initWithName:(NSString *)name andDescription:(NSString *)description{
    self = [super init];
    if(self){
        self.name = name;
        self.descriptionOfCreature = description;
    }
    return self;
}

@end
