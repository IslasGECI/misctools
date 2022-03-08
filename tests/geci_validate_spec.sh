
#shellcheck shell=sh

Describe "geci-validate"

  It "requires directory path as first argument"
    cd tests/valid_tdp
    When call ../../src/geci-validate
    The status should be failure
    The stderr should include "'datapackage.json' does not exist."
    The stdout should include "# invalid: datapackage.json"
  End

  It "accepts a relative path as first argument"
    When call src/geci-validate tests/valid_tdp
    The status should be success
    The stdout should include "# valid: morfometria_albatros-laysan_guadalupe.csv"
  End

  It "accepts a dot as first argument"
    cd tests/valid_tdp
    When call ../../src/geci-validate .
    The status should be success
    The stdout should include "# valid: morfometria_albatros-laysan_guadalupe.csv"
  End

  It "fails when a duplicate row is present"
    When call src/geci-validate tests/duplicate_row_tdp
    The status should be failure
    The stdout should include "'valid': False"
    The stdout should include "duplicate-row"
  End
End
