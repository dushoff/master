The top-level meta-repo for user `dushoff`

Structure
=========

<1M/>

[1M](1M/)

academic/
commit.time
LICENSE.md
Makefile
make.log
makestuff/
README.md
research/
sub.mk
target.mk

Pending
=======

Creating repos
--------------

I'd like to do this in meta-repos (instead of a single central location), so I can repeat repo names (inside different orgs). But it has been causing problems so far

Debugging submodule structure
-----------------------------

Git seems to keep submodule info in:
	* the index
		* .gitmodules (the key indexed file, should be nested)
	* In .git -- but if the working directory _is_ a module, this needs to be found from upstream
		* .git/config
		* A directory called .git/modules
