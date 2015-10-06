# OCOut

Objective-C out, continuing in the grand tradition of [php out](https://github.com/Jaymon/out) and [python out](https://github.com/Jaymon/pout).


## If I install the pod, what do I get?

### OCOUT(val)

Print out the variable name and the variable value.

```obj-c
NSString *val = @"foo bar";
OCOUT(val);
```

Will result in:

```
str = foo bar (ViewController:17)
```

`OCOUT` will print out almost any value, for example:

```obj-c
UIEdgeInsets ei = UIEdgeInsetsMake(10, 10, 10, 10);
OCOUT(ei);

NSRange range = NSMakeRange(0, 10);
OCOUT(range);
```

Will print out:

```
ei = {10, 10, 10, 10} (ViewController:20)
range = {0, 10} (ViewController:23)
```


### OCBREAK(linecount)

Add one or more lines of `*`'s.

```obj-c
OCBREAK(5);
```

Will result in:

```
************************************************************
************************************************************
************************************************************
************************************************************
************************************************************
(ViewController:26)
```


### OCHERE()

Print here and the line number, super handy when you need to see if code is being ran.


```obj-c
OCHERE();
```

Will result in:

```
here 28 (ViewController:28)
```


### OCTRACE()

Simpler stack trace.


```obj-c
OCTRACE();
```

Will result in:

```
1.	[ViewController viewDidLoad]
2.	[UIViewController loadViewIfRequired]
3.	[UIViewController view]
4.	[UIWindow addRootViewControllerViewIfPossible]
5.	[UIWindow _setHidden:forced:]
6.	[UIWindowAccessibility _orderFrontWithoutMakingKey]
7.	[UIWindow makeKeyAndVisible]
8.	[UIApplication _callInitializationDelegatesForMainScene:transitionContext:]
9.	[UIApplication _runWithMainScene:transitionContext:completion:]
10.	[UIApplication workspaceDidEndTransaction:]
11.	[FBSSerialQueue _performNext]
12.	[FBSSerialQueue _performNextFromRunLoopSource]
13.	[UIApplication _run]
(ViewController:30)
```


## Installation

Use [Cocoapods](https://cocoapods.org/). To install it, simply add the following line to your Podfile:

```ruby
pod "OCOut"
```


## License

OCOut is available under the MIT license. See the LICENSE file for more info.


## Information

OCOut is based off the code from [VTPG](https://github.com/VTPG/CommonCode), it basically pulls out the piece of code written about [here](http://vgable.com/blog/2010/08/19/the-most-useful-objective-c-code-ive-ever-written).

here is another approach to the problem (but way more code and didn't do obj-c properties):

* [cave man debugging](http://jens.ayton.se/blag/almost-elegant-cave-man-debugging/)
* [JAValueToString](https://github.com/JensAyton/JAValueToString)

