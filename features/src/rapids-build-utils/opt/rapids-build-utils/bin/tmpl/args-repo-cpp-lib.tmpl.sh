args_${NAME}_cpp_${CPP_LIB}() {
    echo "src_path=\"${SRC_PATH}\""
    echo "cpp_lib=\"${CPP_LIB}\""
    echo "cpp_src=\"${CPP_SRC}\""
    echo "cpp_args=\"${CPP_ARGS}\"";
    echo "cpp_deps=\"${CPP_DEPS}\"";
}

(args_${NAME}_cpp_${CPP_LIB} "$@");
