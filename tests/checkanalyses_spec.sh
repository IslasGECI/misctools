
#shellcheck shell=sh

Describe "geci-checkanalyses"

  It "requires image_tag"
    When call geci-checkanalyses tests/checkanalyses/analyses_without_imagetag.json
    The status should be failure
    The stdout should include "'image_tag' is a required property"
  End

  It "accepts image_tag"
    When call geci-checkanalyses tests/checkanalyses/analyses.json
    The status should be success
    The stdout should include "ok -- validation done"
  End

End