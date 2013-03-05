# NappSlideMenu Module

## Description

The NappSlideMenu module extends the Appcelerator Titanium Mobile framework. 
The module is licensed under the MIT license.

Thanks to `Tom Adriaenssen` for his great work with ViewDeck https://github.com/Inferis/ViewDeck


## Referencing the module in your Titanium Mobile application ##

Simply add the following lines to your `tiapp.xml` file:
    
    <modules>
        <module platform="iphone">dk.napp.slidemenu</module> 
    </modules>

## Reference

For more detailed code examples take a look into the example app


### centerWindow, leftWindow, rightWindow

NappSlideMenu does not require you to use the 3 windows. You can also use either the combo of center/left or center/right for your desired needs. 


### leftLedge, rightLedge (optinal)

Ledge is used to define the maximum amount the view can be opened. Default is `65` if no number is defined. 

	var window = NappSlideMenu.createSlideMenuWindow({
		centerWindow:navController,
		leftWindow:winLeft,
		rightWindow:winRight,
		leftLedge:100
	});
	

## API Methods

### toggleLeftView, toggleRightView

toggleLeftView() and toggleRightView() are used to toggle each visibility of either the left or right window. 

### toggleOpenView

toggleOpenView() toggles the open window. Good to reset NappSlideMenu if we do not know which view is open. 


### bounceLeftView, bounceRightView, bounceTopView, bounceBottomView

A small animation to show the app user that its possible to interact with the NappSlideMenu.
	
	

## Author

**Mads Møller**  
web: http://www.napp.dk  
email: mm@napp.dk  
twitter: @nappdev  


## License

    Copyright (c) 2010-2013 Mads Møller

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.