args_${NAME}_cpp_${CPP_LIB}() {
    echo "py_src=\"${PY_SRC}\"";
    echo "py_lib=\"${PY_LIB}\"";
    echo "cpp_args=\"${CPP_ARGS}\"";
    echo "cpp_deps=\"${CPP_DEPS}\"";
}

(args_${NAME}_cpp_${CPP_LIB} "$@");
