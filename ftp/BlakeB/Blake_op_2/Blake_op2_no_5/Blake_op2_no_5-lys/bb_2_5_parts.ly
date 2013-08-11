\include "bb_2_5_all_vn.ly"
\include "bb_2_5_all_vla.ly"

part_duetto_v = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_duetto_v >>
    \tag #'score \tag #'vla \new Staff << \viola_duetto_v >>
  >>
}

part_minuetto = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_minuetto >>
    \tag #'score \tag #'vla \new Staff << \viola_minuetto >>
  >>
}
