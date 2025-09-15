#shellcheck shell=sh

Describe 'test gecitdp2xlsx'
  checksum() { md5sum ${output} | cut -d " " -f1; }
  clean_output() { rm --force ${output};}
  BeforeEach 'clean_output'
  AfterEach 'clean_output'
  It 'hash test'
    output="tests/valid_tdp/tabla.xlsx"
    expected_md5="55a8d131610827867b3189337a9441ff"
    When call geci-tdp2xls tests/valid_tdp
    The result of function checksum should eq ${expected_md5}
  End
End
