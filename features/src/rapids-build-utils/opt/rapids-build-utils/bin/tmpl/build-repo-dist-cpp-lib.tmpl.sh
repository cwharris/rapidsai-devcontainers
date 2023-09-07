#! /usr/bin/env bash

build_${NAME}_inplace_cpp_${CPP_LIB}() {

    set -euo pipefail;

    local cpp_args
    local cpp_deps
    local src_path
    local cpp_lib
    local cpp_src

    eval "$(                                  \
        args-${NAME}-cpp-${CPP_LIB}           \
      | xargs -r -d'\n' -I% echo -n local %\; \
    )";

    echo $cpp_args
    echo $cpp_deps
    echo $src_path
    echo $cpp_lib
    echo $cpp_src

    echo "C++ dist builds not yet implemented"
    exit 1;
}

if test -n "${rapids_build_utils_debug:-}"; then
    PS4="+ ${BASH_SOURCE[0]}:\${LINENO} "; set -x;
fi

(build_${NAME}_inplace_cpp_${CPP_LIB} "$@");
