\include "bb_2_1_all_vn.ly"
\include "bb_2_1_all_vla.ly"

part_minore = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_minore >>
    \tag #'score \tag #'vla \new Staff << \viola_minore >>
  >>
}

part_duetto_i = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_duetto_i >>
    \tag #'score \tag #'vla \new Staff << \viola_duetto_i >>
  >>
}

part_rondo = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_rondo >>
    \tag #'score \tag #'vla \new Staff << \viola_rondo >>
  >>
}
