# master
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
-include $(ms)/repos.def

##################################################################

## Content

## Nothing here except repos (mostly repos full of repos)

dirs = 1M
dfiles: $(dirs:%=%/Makefile)
Sources += $(dirs)

######################################################################

-include $(ms)/git.mk
-include $(ms)/modules.mk

# -include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
