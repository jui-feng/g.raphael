# g.bar.js #

## Requirements ##

 + raphael.js
 + g.raphael.js
 + g.bar.js
 
## Overview ##

Creates a bar chart.

## Parameters ##

**1. x** number **X coordinate of the upper left corner**

**2. y** number **Y coordinate of the upper left corner**

**3. width** number **width**

**4. height** number **height**

**5. values** array of arrays of numbers (multiple series) or single array of numbers **Values for your bars. Pass multiple arrays for multiple data series (multi chart or stacked chart).**

**5. opts** object **Options (more info soon.)**

_opts_

**type**

Values are,

    + "round" (semi-circle at end of bars)
    + "sharp" (triangle at end of bars)
    + "soft" (rounded corners)
    + "square" (just square)
    
Defaults to "square" if type is not specified.

**stacked**

Values are,

    + true
    + false
    
Defaults to false. Use this to stack your bars instead of displaying them side by side.

**gutter**

Values given as a string, denoting %. E.g. "40%"

Defaults to "20%". For horizontal barcharts, this is calculated as,

    bargutter = Math.floor(barheight * gutter / 100)
    
e.g. if my height was 220, and I had 4 bars, then my barheight is calculated as,

    Math.floor(height / (len * (100 + gutter) + gutter) * 100); // where len is 4 and height is 220, and if not specified, gutter is 20
    
then according to the above, my bargutter = 8px.
    
    
## Methods ##

**1. .hover(fin, fout)** - **fin/fout**: callbacks to trigger when mouse hovers in and out respectively over the bars.
**2. .label(labels, isRight/isBottom)** - **Might be broken in official g.raphael** - **labels**: array with the same structure like the one passed as values to r.g.barchart(), containing strings to add as a label for each bar., **isRight/isBottom**: Booleans that specify if the labels should be displayed at the right side (horizontal bar chart) / bottom (standard bar chart).

## Usage ##

Create a bar chart,


    // bare bones
    var barchart = r.g.barchart(_params);
    // example
    var barchart = r.g.barchart(10, 10, 300, 220, [[30, 20, 10]]);
    // horizontal barchart 
    var hbarchart = r.g.hbarchart(10, 10, 300, 220, [[30, 20, 10]]);
    
    
Create a stacked bar chart,


    // example
    var barchart = r.g.barchart(10, 10, 300, 220, [[30, 20, 10], [44, 66, 88]], {stacked:true});
    
    
Attach hover event to piechart,


    // example
    barchart.hover(function() {
        this.bar.attr({fill: "#333"}); 
    }, function() {
        this.bar.attr({fill: "#666"});
    });

Add labels,


	// show labels at the bottom of the chart (isBottom=true):
	barchart.label([["big number", "number", "small number"]], true);

## Others ##

 + Official g.raphael does not allow negative numbers for values. This repository has a patch that adds negative values support for hbarchart (horizontal only).

## Written by ##

Kenny Shen, www.northpole.sg.
Some tiny changes by Florian W. (jui-feng)
