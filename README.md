# Unofficial fork of g.raphael #

I'm using g.raphael for a node.js project. I stumbled upon a bug with horizontal bar chart labels which I fixed, and changed the horizontal bar chart to allow negative values, so I decided to push my changes to github. The last commit to official g.raphael was more than a year ago, so this is in my own repository for now.

I also felt like cleaning up the directory structure a little bit. For me, a major problem with g.raphael is that it has no documentation. I discovered a documentation pull request for the official g.raphael by kennyshen (thanks!), so this is included in my repository. Keep in mind this documentation wasn't created by the main g.raphael developer, so it might not be 100% accurate and is not official.

## docs folder ##

contains the various breakdown of the different g.raphael charts written in markdown. If you spot any mistake or wish to expound on the current stuff here, please let kennyshen know.
The docs are taken from https://github.com/kennyshen/g.raphael

## examples folder ##

contains examples.
The examples are taken from https://github.com/kennyshen/g.raphael

## Makefile ##

The Makefile is used to create a minified (compressed javascript) version of any *.js file in the "src" directory and put it into the "min" directory (it will be created if it doesn't exist). Type "make" in the g.raphael root directory to start the process. You will need yui-compressor (e.g. from Ubuntu apt repositories). If you need to, you can edit the Makefile to point to your installation of the YUI compressor.

## src folder ##

contains the actual g.raphael javascript source files.
