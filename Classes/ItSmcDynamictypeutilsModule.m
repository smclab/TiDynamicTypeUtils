/**
 * Copyright (c) 2014 SMC Treviso s.r.l. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */


#import "ItSmcDynamictypeutilsModule.h"
#import "TiProxy.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"


@implementation ItSmcDynamictypeutilsModule


#pragma mark Internal


// this is generated for your module, please do not change it
- (id)moduleGUID
{
    return @"109fa557-7abf-4132-bf8d-2f2b04e19fdf";
}


// this is generated for your module, please do not change it
- (NSString*)moduleId
{
    return @"it.smc.dynamictypeutils";
}


#pragma mark Lifecycle


- (void)startup
{
    // this method is called when the module is first loaded
    // you *must* call the superclass
    [super startup];
    
    NSLog(@"[INFO] %@ loaded",self);
}


- (void)shutdown:(id)sender
{
    // this method is called when the module is being unloaded
    // typically this is during shutdown. make sure you don't do too
    // much processing here or the app will be quit forceably
    
    // you *must* call the superclass
    [super shutdown:sender];
}


#pragma mark Cleanup 


- (void)dealloc
{
    // release any resources that have been retained by the module
    [super dealloc];
}


#pragma mark Internal Memory Management


- (void)didReceiveMemoryWarning:(NSNotification*)notification
{
    // optionally release any resources that can be dynamically
    // reloaded once memory is available - such as caches
    [super didReceiveMemoryWarning:notification];
}


#pragma mark Listener Notifications


- (void)_listenerAdded:(NSString *)type count:(int)count
{
    if (count == 1 && [type isEqualToString:@"my_event"])
    {
        // the first (of potentially many) listener is being added 
        // for event named 'my_event'
    }
}


- (void)_listenerRemoved:(NSString *)type count:(int)count
{
    if (count == 0 && [type isEqualToString:@"my_event"])
    {
        // the last listener called for event named 'my_event' has
        // been removed, we can optionally clean up any resources
        // since no body is listening at this point for that event
    }
}


#pragma Public APIs


- (id)getFontSize:(id)textStyle
{
    if (![TiUtils isIOS7OrGreater]) {
        return 0;
    }

    ENSURE_SINGLE_ARG(textStyle, NSString);

    if ([textStyle isEqualToString:UIFontTextStyleHeadline]
        || [textStyle isEqualToString:UIFontTextStyleSubheadline]
        || [textStyle isEqualToString:UIFontTextStyleBody]
        || [textStyle isEqualToString:UIFontTextStyleFootnote]
        || [textStyle isEqualToString:UIFontTextStyleCaption1]
        || [textStyle isEqualToString:UIFontTextStyleCaption2])
    {
        UIFontDescriptor * descriptor =
            [UIFontDescriptor preferredFontDescriptorWithTextStyle:textStyle];

        return [NSNumber numberWithFloat:descriptor.pointSize];
    }
    else
    {
        return 0;
    }
}


@end
