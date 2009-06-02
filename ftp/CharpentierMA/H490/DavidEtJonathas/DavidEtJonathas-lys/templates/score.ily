\score {
  \new Staff <<
    \keepWithTag #(*tag-global*) \global
    \keepWithTag #(*tag-notes*) \includeNotes #(*note-filename*)
    \clef #(*clef*)
    #(ly:export (if (*instrument-name*)
                    (make-music 'ContextSpeccedMusic
                      'context-type 'Staff
                      'element (make-music 'PropertySet
                                 'value (markup #:large (*instrument-name*))
                                 'symbol 'instrumentName))
                    (make-music 'Music)))
    #(ly:export (or (*score-extra-music*) (make-music 'Music)))
  >>
  \layout {
    indent = #(if (*instrument-name*)
                  largeindent
                  (or (*score-indent*) smallindent))
    ragged-last = #(*score-ragged*)
  }
}