The top-level meta-repo for user `dushoff`

Lots of confusion in my brain about:

* setting up brand-new repos. I'd like to do it here, so I can repeat repo names (inside different orgs). But it has been causing problems so far

* debugging and restarting submodules. Git seems to keep submodule info in:
	* the index
	* .gitmodules (the key indexed file, maybe that's all there is to the index, but don't count on it)
	* .git/config
	* A directory called .git/modules
