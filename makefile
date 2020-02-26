
build:
	rm -rf NavTree/src
	$(MAKE) -C rbxlx-to-rojo-0.1.0
	git status
open: 
	cd NavTree && open NavTree.rbxlx

src: 
	subl NavTree/src

rojo: 
	cd NavTree && rojo serve

commit:
	git add .
	read -r -p "Enter commit message: " MSG; \
	git commit -am "$$MSG"
	git push
