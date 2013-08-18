\include "bb_2_4_all_vn.ly"
\include "bb_2_4_all_vla.ly"

part_duetto_iv = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_duetto_iv >>
    \tag #'score \tag #'vla \new Staff << \viola_duetto_iv >>
  >>
}

part_rondo = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_rondo >>
    \tag #'score \tag #'vla \new Staff << \viola_rondo >>
  >>
}
