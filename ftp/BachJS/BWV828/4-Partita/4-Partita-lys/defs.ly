halsup      = { \stemUp \tieUp \slurUp \dotsUp }
halsdown    = { \stemDown \tieDown \slurDown \dotsDown}
halsneutral = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
rr          = { \once \override Rest.extra-offset = #'( 0.4 . 0) }
staffup     = { \change Staff = "right" \halsdown }
staffdown   = { \change Staff = "left" \halsup }
up          = { \change Staff = "right" }
down        = { \change Staff = "left" }
ntn         = { \once \override TupletNumber #'stencil = ##f }
shiftRest   = { \once \override Rest #'extra-offset = #'( 1 . 0 ) 
                \once \override Dots #'extra-offset = #'( 1 . 0 ) }
markLeft    = { \once \override Score.RehearsalMark.self-alignment-X = #LEFT }
markPadding = { \once \override Score.RehearsalMark.outside-staff-padding = #2 }