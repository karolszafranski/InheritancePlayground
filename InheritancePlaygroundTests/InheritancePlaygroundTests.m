//
//  InheritancePlaygroundTests.m
//  InheritancePlaygroundTests
//
//  Created by Karol Szafrański on 13.01.20.
//  Copyright © 2020 Karol Szafrański. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RootClass.h"
#import "ChildClass.h"
#import "GrandchildClass.h"
#import "RootClass+Category.h"

@interface InheritancePlaygroundTests : XCTestCase

@end

@implementation InheritancePlaygroundTests

- (void)testRootClassCalculation {
    RootClass* object = [RootClass new];
    XCTAssertEqual(2, [object calculate]);
}

- (void)testIndirectRootClassCalculation {
    RootClass* object = [RootClass new];
    XCTAssertEqual(2, [object calculateIndirectly]);
}

- (void)testChildClassCalculation {
    RootClass* object = [ChildClass new];
    XCTAssertEqual(3, [object calculate]);
}

- (void)testIndirectChildClassCalculation {
    RootClass* object = [ChildClass new];
    XCTAssertEqual(3, [object calculateIndirectly]);
}

- (void)testGrandchildClassCalculation {
    RootClass* object = [GrandchildClass new];
    XCTAssertEqual(4, [object calculate]);
}

- (void)testIndirectGrandchildClassCalculation {
    RootClass* object = [GrandchildClass new];
    XCTAssertEqual(4, [object calculateIndirectly]);
}

- (void)testCalculateInGrandchildSuperclass {
    RootClass* object = [GrandchildClass new];
    XCTAssertEqual(3, [object calculateInSuperclass]);
}

- (void)testCalculateInChildSuperclass {
    RootClass* object = [ChildClass new];
    XCTAssertEqual(2, [object calculateInSuperclass]);
}

- (void)testCalculateInRootSuperclass {
    RootClass* object = [RootClass new];
    XCTAssertEqual(0, [object calculateInSuperclass]);
}

@end
