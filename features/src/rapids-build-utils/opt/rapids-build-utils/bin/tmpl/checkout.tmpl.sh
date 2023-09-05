#! /usr/bin/env bash

checkout_${NAME}() {
    set -euo pipefail;

    if [[ -d ~/"${SRC_PATH}"/.git ]]; then

        local branch=;
        local upstream=;
        local directory=;

        eval "$(                                  \
            devcontainer-utils-parse-args --names '
                b|branch                          |
                d|directory                       |
                u|upstream                        |
                no-update-env                     |
            ' - <<< "$@"                          \
          | xargs -r -d'\n' -I% echo -n local %\; \
        )";

        branch="${b:-${branch:-"${GIT_TAG}"}}";
        directory="${d:-${directory:-"${HOME}/${SRC_PATH}"}}";
        upstream="${u:-${upstream:-"${GIT_UPSTREAM}/${GIT_REPO}"}}";

        echo "===== ${NAME} -> ${branch} =====" 1>&2;

        git -C ~/${SRC_PATH} fetch --all || true;
        git -C ~/${SRC_PATH} checkout --recurse-submodules ${branch} || true;

    fi
}

if test -n "${rapids_build_utils_debug:-}"; then
    PS4="+ ${BASH_SOURCE[0]}:\${LINENO} "; set -x;
fi

checkout_${NAME} "$@";
