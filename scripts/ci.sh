export TIMEOUT_SCALE_FACTOR=15
export TEST_PACKAGES_EXCLUDE="less"
export SELF_TEST_EXCLUDE="^can't publish package with colons|^old cli tests|^logs - logged (in|out)|^mongo - logged (in|out)|^minifiers can't register non-js|^minifiers: apps can't use|^compiler plugins - addAssets"

# Don't print as many progress indicators
export EMACS=t

# run different jobs based on CicleCI parallel container index
echo "Running warehouse self-tests"
./meteor self-test --headless \
    --exclude "$SELF_TEST_EXCLUDE"
