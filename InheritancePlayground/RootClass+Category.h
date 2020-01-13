//
//  RootClass+Category.h
//  InheritancePlayground
//
//  Created by Karol Szafrański on 13.01.20.
//  Copyright © 2020 Karol Szafrański. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "RootClass.h"

NS_ASSUME_NONNULL_BEGIN

@interface RootClass (Category)

- (NSInteger)calculateIndirectly;

- (NSInteger)calculateInSuperclass;

@end

NS_ASSUME_NONNULL_END
