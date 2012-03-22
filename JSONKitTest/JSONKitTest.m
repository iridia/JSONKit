//
//  JSONKit.h
//  http://github.com/waveface/JSONKit
//  Dual licensed under either the terms of the BSD License, or alternatively
//  under the terms of the Apache License, Version 2.0, as specified below.
//

#import "JSONKitTest.h"
#import "JSONKit.h"

@implementation JSONKitTest

- (void) testRoundtripDecoding {

	NSDictionary *payload = [NSDictionary dictionaryWithObjectsAndKeys:@"hello", @"world", nil];
	
	STAssertTrue([[[payload JSONData] objectFromJSONData] isEqual:payload], @"NSDictionary -> JSON Data -> NSDictionary roundtrip result must match.");

}

@end
