This was all craziness! I realized right when I finished consolidating that there is too much replication in the .git directories, and things are going to get too big, pretty fast.

master is already 1G.

I should abandon this soon.

The right model is:

* submodules starting below where we are making products
* clone directories and updates above that

Try to focus for now 2018 Jan 05 (Fri) on getting actual work done, and come back to the craziness later.

----------------------------------------------------------------------

The top-level meta-repo for user `dushoff`


Structure
=========

<1M/>

[1M](1M/)

academic/
makestuff/
research/

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
