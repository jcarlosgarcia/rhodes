
#import "NativeTabbarSingleton.h"

extern void rho_create_tabbar(NSArray* items, NSDictionary* properties, id<IMethodResult>callback);
extern BOOL nativebar_started();
extern void remove_native_tabbar();
extern void native_tabbar_set_tab_badge(int index,char *val);
extern int native_tabbar_get_current_tab();
extern void native_tabbar_switch_tab(int index);

@implementation NativeTabbarSingleton



-(void) create:(NSArray*)tabElements tabBarProperties:(NSDictionary*)tabBarProperties methodResult:(id<IMethodResult>)methodResult {
    rho_create_tabbar(tabElements, tabBarProperties, methodResult);
}

-(void) currentTabIndex:(id<IMethodResult>)methodResult {
    [methodResult setResult:[NSNumber numberWithInt:native_tabbar_get_current_tab()]];
}

-(void) remove {
    remove_native_tabbar();
}

-(void) setTabBadge:(int)tabIndex badge:(NSString*)badge {
    native_tabbar_set_tab_badge(tabIndex, (char*)[badge UTF8String]);
}

-(void) switchTab:(int)tabIndex {
    native_tabbar_switch_tab(tabIndex);
}

-(void) isCreated:(id<IMethodResult>)methodResult {
    [methodResult setResult:[NSNumber numberWithBool:nativebar_started()]];
}

-(void) removeTab:(int)tabIndex {
    // unsupported
}



@end