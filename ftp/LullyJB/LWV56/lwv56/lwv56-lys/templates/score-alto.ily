\score {
  \new Staff <<
    \keepWithTag #(or (*tag*) (list)) \global
    \clef "alto"
    \includeNotes #(*note-filename*)
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