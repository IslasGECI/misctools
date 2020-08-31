#!/usr/bin/env bats

@test "que las figuras son las correctas desde el analyses" {
  run cat ./figures_from_analyses_test.txt
  result="$(get_png_from_analyses densidad_madrigueras.pdf)"
  [ "$output" = "$result" ]
}

@test "que las figuras son las correctas el archivo tex" {
  run cat ./figures_from_analyses_tex_test.txt
  result="$(get_png_from_tex densidad_madrigueras.tex)"
  [ "$output" = "$result" ]
}

@test "que las figuras del archivo tex estén en el analyses" {
  run ./are_png_in_both densidad_madrigueras
  [ "$output" = true ]
}