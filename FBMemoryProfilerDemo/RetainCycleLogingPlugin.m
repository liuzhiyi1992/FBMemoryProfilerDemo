//
//  RetainCycleLogingPlugin.m
//  FBMemoryProfilerDemo
//
//  Created by lzy on 16/12/12.
//  Copyright © 2016年 lzy. All rights reserved.
//

#import "RetainCycleLogingPlugin.h"

@implementation RetainCycleLogingPlugin
- (void)memoryProfilerDidFindRetainCycles:(NSSet *)retainCycles
{
    if (retainCycles.count > 0)
    {
        NSLog(@"\n Cycles: \n%@", retainCycles);
    }
}
@end
