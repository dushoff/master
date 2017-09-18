The top-level meta-repo for user `dushoff`

Lots of confusion in my brain about:

* setting up brand-new repos. I'd like to do it here, so I can repeat repo names (inside different orgs). But it has been causing problems so far

* debugging and restarting submodules. Git seems to keep submodule info in:
	* the index
		* .gitmodules (the key indexed file, should be nested)
	* In .git -- but if the working directory _is_ a module, this needs to be found from upstream
		* .git/config
		* A directory called .git/modules
