//
//  FISAppDelegate.m
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSMutableString *rollCall = [[NSMutableString alloc] init];
    
    NSUInteger lastIndex = dwarfs.count - 1;
    
    for (NSUInteger i = 0; i < dwarfs.count; i++) {
        
        [rollCall appendFormat:@"%lu. %@", i + 1, dwarfs[i]];
        
        if (i < lastIndex) {
            [rollCall appendString:@" | "];
        }
    }
    
    return [NSString stringWithString:rollCall];
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    
    NSMutableArray *powersAsShouts = [[NSMutableArray alloc] init];
    
    for (NSString *power in powers) {
        NSString *uppercasePower = [power uppercaseString];
        NSString *powerAsShout = [uppercasePower stringByAppendingString:@"!"];
        
        [powersAsShouts addObject:powerAsShout];
    }
    return [NSArray arrayWithArray:powersAsShouts];
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSMutableString *summons = [[NSMutableString alloc] initWithString:@"Let our powers combine:\n"];
    
    NSArray *powersAsShouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSString *shout in powersAsShouts) {
        [summons appendFormat:@"%@\n", shout];
    }
    
    [summons appendString:@"Go Planet!"];
    
    return [NSString stringWithString:summons];
}

- (NSString *)findFirstOfPremiumCheeses:(NSArray *)premiumCheeses
                       inCheesesInStock:(NSArray *)cheesesInStock {
    
    for (NSString *premiumCheese in premiumCheeses) {
        if ([cheesesInStock containsObject:premiumCheese]) {
            return premiumCheese;
        }
    }
    return @"No premium cheeses in stock.";
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    
    for (NSString *moneyBag in moneyBags) {
        NSString *paperBill = [NSString stringWithFormat:@"$%lu", moneyBag.length];
        [paperBills addObject:paperBill];
    }
    
    return [NSArray arrayWithArray:paperBills];
}


@end
