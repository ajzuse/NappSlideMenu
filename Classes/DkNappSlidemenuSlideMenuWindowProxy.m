/**
 * Module developed by Napp ApS
 * www.napp.dk
 * Mads Møller
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */

#import "DkNappSlidemenuSlideMenuWindowProxy.h"

#import "TiBase.h"
#import "TiUtils.h"
#import "TiApp.h"

@implementation DkNappSlidemenuSlideMenuWindowProxy

-(void)windowDidOpen {
	[super windowDidOpen];
	[self reposition];
}

-(IIViewDeckController *)_controller {
	return [(DkNappSlidemenuSlideMenuWindow*)[self view] controller];
}

-(TiUIView*)newView {
	return [[DkNappSlidemenuSlideMenuWindow alloc] init];
}


# pragma ViewDeck Delegates

- (void)viewDeckController:(IIViewDeckController*)viewDeckController willOpenViewSide:(IIViewDeckSide)viewDeckSide animated:(BOOL)animated
{
	NSString *viewOpened;
	
	if (viewDeckSide == IIViewDeckRightSide) {
		viewOpened = @"right";
	} else if (viewDeckSide == IIViewDeckLeftSide) {
		viewOpened = @"left";
	}
	
	if ([self _hasListeners:@"viewOpened"]) {
		[self fireEvent:@"viewOpened" withObject:@{
			@"view": viewOpened
		 } propagate:YES];
	}
}

- (void)viewDeckController:(IIViewDeckController *)viewDeckController willCloseViewSide:(IIViewDeckSide)viewDeckSide animated:(BOOL)animated
{
	NSString *viewClosed;
	
	if (viewDeckSide == IIViewDeckRightSide) {
		viewClosed = @"right";
	} else if (viewDeckSide == IIViewDeckLeftSide) {
		viewClosed = @"left";
	}
	
	if ([self _hasListeners:@"viewClosed"]) {
		[self fireEvent:@"viewClosed" withObject:@{
			@"view": viewClosed
		 } propagate:YES];
	}
}


# pragma API

-(void)toggleLeftView:(id)args {
    TiThreadPerformOnMainThread(^{[(DkNappSlidemenuSlideMenuWindow*)[self view] toggleLeftView:args];}, NO);
}

-(void)toggleRightView:(id)args {
    TiThreadPerformOnMainThread(^{[(DkNappSlidemenuSlideMenuWindow*)[self view] toggleRightView:args];}, NO);
}

-(void)bounceLeftView:(id)args {
    TiThreadPerformOnMainThread(^{[(DkNappSlidemenuSlideMenuWindow*)[self view] bounceLeftView:args];}, NO);
}

-(void)bounceRightView:(id)args {
    TiThreadPerformOnMainThread(^{[(DkNappSlidemenuSlideMenuWindow*)[self view] bounceRightView:args];}, NO);
}

-(void)bounceTopView:(id)args {
    TiThreadPerformOnMainThread(^{[(DkNappSlidemenuSlideMenuWindow*)[self view] bounceTopView:args];}, NO);
}

-(void)bounceBottomView:(id)args {
    TiThreadPerformOnMainThread(^{[(DkNappSlidemenuSlideMenuWindow*)[self view] bounceBottomView:args];}, NO);
}

-(void)toggleOpenView:(id)args {
    TiThreadPerformOnMainThread(^{[(DkNappSlidemenuSlideMenuWindow*)[self view] toggleOpenView:args];}, NO);
}

/* - NOT WORKING
-(void)rightViewPushViewControllerOverCenterController:(id)args {
    TiThreadPerformOnMainThread(^{[(DkNappSlidemenuSlideMenuWindow*)[self view] rightViewPushViewControllerOverCenterController:args];}, NO);
}
-(NSNumber *)canRightViewPushViewControllerOverCenterController:(id)args {
    TiThreadPerformOnMainThread(^{[(DkNappSlidemenuSlideMenuWindow*)[self view] canRightViewPushViewControllerOverCenterController:args];}, NO);
}*/


@end
