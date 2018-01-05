# master
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk

Sources += localrepos.def
-include $(ms)/repos.def
-include localrepos.def

##################################################################

## Content

## Nothing here except repos (mostly repos full of repos)

## Course super-directories
mdirs += 1M 3SS Workshops
## stat744 QMEE??

## Research stuff
mdirs += academic research

## Personal stuff (planning, etc.)
mdirs += org

dirs += $(mdirs)
dfiles: $(dirs) $(dirs:%=%/Makefile)

Sources += $(dirs)


######################################################################

-include $(ms)/git.mk
-include $(ms)/modules.mk

# -include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
