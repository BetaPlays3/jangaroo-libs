#!/usr/bin/env bash
###
### Builds the CKEditor from sources in _source folder and copies the results to the required location for a
### jangaroo-libs release.
###
### For Mac: This build script requires that you installed GNU Tools for example with Homebrew:
###
###     brew install coreutils
###
###
### See Also:
###   * https://docs.ckeditor.com/#!/guide/dev_build
###   * https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/

set -o nounset
set -o pipefail
set -o errexit
### Uncomment to enable debug logging
set -o xtrace

declare -r ME="$(readlink -f "${BASH_SOURCE[0]}")"
declare -r MY_DIR="$(dirname "${ME}")"

###
### Readlink:
### -f, --canonicalize: Create an absolute path
### -m, --canonicalize-missing: Also canonicalize for not (yet) existing files/folders
###
declare -r CKEDITOR_MODULE_ROOT="$(readlink -f "${MY_DIR}/..")"
declare -r CKEDITOR_ORIGINAL_SOURCE="$(readlink -f "${CKEDITOR_MODULE_ROOT}/src/main/sencha/resources/ckeditor/_source")"
declare -r CKEDITOR_PATCHED_SOURCE="$(readlink -fm "${CKEDITOR_MODULE_ROOT}/target/ckeditor/patched-source")"
declare -r CKEDITOR_PATCHED_BUILDER_DIR="$(readlink -fm "${CKEDITOR_PATCHED_SOURCE}/dev/builder")"
declare -r CKEDITOR_PATCHED_BUILD="$(readlink -fm "${CKEDITOR_PATCHED_BUILDER_DIR}/build.sh")"
declare -r CKEDITOR_PATCHED_BUILD_OUTPUT="$(readlink -fm "${CKEDITOR_PATCHED_BUILDER_DIR}/release/ckeditor")"
declare -r CKEDITOR_TARGET="$(readlink -f "${CKEDITOR_MODULE_ROOT}/src/main/sencha/resources/ckeditor")"

declare -r CKEDITOR_PATCHED_BUILD_CONFIG="$(readlink -f "${CKEDITOR_MODULE_ROOT}/src/jangaroo-build-config.js")"

echo "Preparing temporary CKEditor build folder to apply patches at: ${CKEDITOR_PATCHED_SOURCE}"
rm --recursive "${CKEDITOR_PATCHED_SOURCE}" &> /dev/null || true
mkdir --parents "${CKEDITOR_PATCHED_SOURCE}"
cp --recursive "${CKEDITOR_ORIGINAL_SOURCE}/"* "${CKEDITOR_PATCHED_SOURCE}"

echo "Going to build CKEditor with configuration file: ${CKEDITOR_PATCHED_BUILD_CONFIG}"

### Debug-Level: 0, 1 or 2
"${CKEDITOR_PATCHED_BUILD}" --leave-js-unminified --build-config "${CKEDITOR_PATCHED_BUILD_CONFIG}" --no-zip --no-tar --debug-level=1

echo "Cleaning target folder for CKEditor release: ${CKEDITOR_TARGET} (skipping _source/)"
### For safety... Change to directory to clean-up.
cd "${CKEDITOR_TARGET}"
### true: Ignore failure if there are no more files to delete
find . -maxdepth 1 ! -name _source ! -name . | xargs rm --recursive || true

echo "Copying build results"
echo "    from: ${CKEDITOR_PATCHED_BUILD_OUTPUT}"
echo "    to: ${CKEDITOR_TARGET}."
cp --recursive "${CKEDITOR_PATCHED_BUILD_OUTPUT}/"* "${CKEDITOR_TARGET}"
