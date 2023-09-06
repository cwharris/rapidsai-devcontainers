python_dist_package_${PYTHON_PACKAGE}()
{
    set -euo pipefail;

    echo "building python package for distribution: ${PYTHON_PACKAGE}"
}

if test -n "${rabbit_debug:-}"; then
    PS4="+ ${BASH_SOURCE[0]}:\${LINENO} "; set -x;
fi

(_python_dist_package_${PYTHON_PACKAGE} "$@");