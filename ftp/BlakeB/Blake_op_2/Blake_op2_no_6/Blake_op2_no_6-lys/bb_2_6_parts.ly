\include "bb_2_6_all_vn.ly"
\include "bb_2_6_all_vla.ly"

part_duetto_vi = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_duetto_vi >>
    \tag #'score \tag #'vla \new Staff << \viola_duetto_vi >>
  >>
}

part_rondo = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_rondo >>
    \tag #'score \tag #'vla \new Staff << \viola_rondo >>
  >>
}

part_minore = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_minore >>
    \tag #'score \tag #'vla \new Staff << \viola_minore >>
  >>
}
