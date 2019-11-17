.PHONY : clean all

all : index.html

# css file credit from here: https://gist.github.com/killercup/5917178/revisions
index.html : index.md
	pandoc -o index.html -c pandoc.css --from markdown --to html5 index.md

index.md : index.org
	pandoc -o index.md --from org --to markdown index.org

clean :
	rm -f index.html
