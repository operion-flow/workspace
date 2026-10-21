REPOS := operion operion.dev editor

.PHONY: setup sync build clean

setup: $(REPOS)

$(REPOS):
	git clone git@github.com:operion-flow/$@.git $@

sync: $(REPOS)
	git pull --rebase origin main
	for repo in $(REPOS); do git -C $$repo pull --rebase origin main || exit 1; done

build:
	go build -o ./bin/operion ./operion/cmd/operion

clean:
	rm -rf ./bin
