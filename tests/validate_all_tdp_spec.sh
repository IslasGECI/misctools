
#shellcheck shell=sh

Describe "validate-all-tdp"
  It "run all datapackages"
    cd tests/tdp_test
    When call ../../src/validate_all_tdp.sh
    The status should be success
    The stdout should include "Skip checks: duplicate-row"
  End
  It "run all datapackages"
    cd tests/tdp_test_fail
    When call ../../src/validate_all_tdp.sh
    The status should be failure
    The stdout should include "Skip checks: null"
  End
End
