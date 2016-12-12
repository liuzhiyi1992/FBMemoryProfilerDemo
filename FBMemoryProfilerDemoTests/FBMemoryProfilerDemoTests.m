//
//  FBMemoryProfilerDemoTests.m
//  FBMemoryProfilerDemoTests
//
//  Created by lzy on 16/12/12.
//  Copyright © 2016年 lzy. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <FBMemoryProfiler/FBMemoryProfiler.h>
#import "RetainCycleLogingPlugin.h"
#import "FBStandardGraphEdgeFilters.h"

@interface FBMemoryProfilerDemoTests : XCTestCase
@property (nonatomic, strong) FBMemoryProfiler *memoryProfiler;
@end

@implementation FBMemoryProfilerDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    self.memoryProfiler = nil;
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMemoryLeaks
{
    FBObjectGraphConfiguration *configure = [[FBObjectGraphConfiguration alloc] init];
    self.memoryProfiler = [[FBMemoryProfiler alloc] initWithPlugins:@[[[RetainCycleLogingPlugin alloc] init]] retainCycleDetectorConfiguration:configure];
    [self.memoryProfiler enable];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
