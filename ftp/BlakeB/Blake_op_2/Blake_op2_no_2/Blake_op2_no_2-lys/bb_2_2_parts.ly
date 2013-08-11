\include "bb_2_2_all_vn.ly"
\include "bb_2_2_all_vla.ly"

part_minuetto = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_minuetto >>
    \tag #'score \tag #'vla \new Staff << \viola_minuetto >>
  >>
}

part_duetto_ii = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_duetto_ii >>
    \tag #'score \tag #'vla \new Staff << \viola_duetto_ii >>
  >>
}
