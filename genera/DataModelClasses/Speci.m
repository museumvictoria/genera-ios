//
//  Speci.m
//  genera
//
//  Created by Simon Sherrin on 8/01/12.
/* Copyright (c) 2012 Museum Victoria
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*/
//

#import "Speci.h"
#import "Audio.h"
#import "Group.h"
#import "Image.h"
#import "Template.h"


@implementation Speci

@dynamic details;
@dynamic identifier;
@dynamic label;
@dynamic labelStyle;
@dynamic searchText;
@dynamic squareThumbnail;
@dynamic subgroup;
@dynamic sublabel;
@dynamic sublabelStyle;
@dynamic audios;
@dynamic group;
@dynamic images;
@dynamic template;

// 30/7/2013 - Added Sorted Images and Audio
-(NSArray *) sortedImages {

	NSMutableArray *myImages = [NSMutableArray arrayWithCapacity:1];
	[myImages addObjectsFromArray:[[self images] allObjects]]; //Get random array
	if ([myImages count] > 1){
		NSSortDescriptor* desc = [[NSSortDescriptor alloc] initWithKey:@"order" ascending:YES];
		[myImages sortUsingDescriptors:[NSArray arrayWithObject:desc]];
		[desc release];
	}
	return [NSArray arrayWithArray:myImages];
}

-(NSArray *) sortedAudio {

	NSMutableArray *myAudio = [NSMutableArray arrayWithCapacity:1];
	[myAudio addObjectsFromArray:[[self audios] allObjects]]; //Get random array
	if ([myAudio count] > 1){
		NSSortDescriptor* desc = [[NSSortDescriptor alloc] initWithKey:@"order" ascending:YES];
		[myAudio sortUsingDescriptors:[NSArray arrayWithObject:desc]];
		[desc release];
	}
	return [NSArray arrayWithArray:myAudio];
}

@end
