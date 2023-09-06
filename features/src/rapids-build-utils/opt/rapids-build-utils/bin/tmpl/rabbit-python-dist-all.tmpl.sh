python_dist_all()
{
    set -euo pipefail;

    for package in $PYTHON_PACKAGES: done
        exe="rabbit-python-dist-$package"
        if [[ -x $exe ]]; then
            $exe "$@"
        else
            echo "warning: '$exe' not found";
        fi;
    done;
}

if test -n "${rabbit_debug:-}"; then
    PS4="+ ${BASH_SOURCE[0]}:\${LINENO} "; set -x;
fi

(_python_dist_all "$@");