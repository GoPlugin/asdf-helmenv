install:
	asdf plugin add act https://github.com/grimoh/asdf-act.git || true
	asdf plugin add shellcheck || true
	asdf plugin add shfmt || true
	asdf install

shellcheck:
	./scripts/shellcheck.bash

shfmt:
	./scripts/shfmt.bash

lint: shellcheck shfmt
