
#shellcheck shell=sh

Describe "geci-validate"

  It "requires directory path as first argument"
    cd tests
    When call ../src/geci-validate
    The status should be failure
    The stderr should include "'datapackage.json' does not exist."
    The stdout should include "# invalid: datapackage.json"
  End

  It "accepts a relative path as first argument"
    When call src/geci-validate tests
    The status should be success
    The stdout should include "# valid: morfometria_albatros-laysan_guadalupe.csv"
  End

  It "accepts a dot as first argument"
    cd tests
    When call ../src/geci-validate .
    The status should be success
    The stdout should include "# valid: morfometria_albatros-laysan_guadalupe.csv"
  End

End