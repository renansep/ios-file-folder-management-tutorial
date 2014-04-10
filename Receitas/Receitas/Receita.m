//
//  Receita.m
//  Receitas
//
//  Created by Vinicius Miana on 3/30/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Receita.h"

@implementation Receita

@synthesize nome, modoDePreparo, ingredientes;

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self)
    {
        self.nome = [aDecoder decodeObjectForKey:@"nome"];
        self.modoDePreparo = [aDecoder decodeObjectForKey:@"modeDePreparo"];
        self.ingredientes = [aDecoder decodeObjectForKey:@"ingredientes"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:nome forKey:@"nome"];
    [aCoder encodeObject:modoDePreparo forKey:@"modoDePreparo"];
    [aCoder encodeObject:ingredientes forKey:@"ingredientes"];
}

@end
