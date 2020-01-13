//
//  RootClass+Category.m
//  InheritancePlayground
//
//  Created by Karol Szafrański on 13.01.20.
//  Copyright © 2020 Karol Szafrański. All rights reserved.
//

#import "RootClass+Category.h"

#import <Foundation/Foundation.h>
#import <objc/runtime.h>


typedef NSUInteger (*CalculateFunction)(id self,SEL _cmd,...);


@implementation RootClass (Category)

- (NSInteger)calculateIndirectly {
    return [self calculate];
}

- (NSInteger)calculateInSuperclass {
    Method method = class_getInstanceMethod([[self class] superclass], @selector(calculate));
    if (method == NULL) {
        return 0;
    }
    
    IMP implementation = method_getImplementation(method);

    typedef NSInteger (*fn)(id, SEL);
    fn f = (fn)implementation;
    NSInteger result = f(self, @selector(calculate));

    return result;
}

@end
