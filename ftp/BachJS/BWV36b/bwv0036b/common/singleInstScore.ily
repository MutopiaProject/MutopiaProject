singleInstScore =
#(define-scheme-function
     (parser location staffSize pieceNm notes)
     (number? string? ly:music?)
   #{
      \score {
        \header { piece = #pieceNm }
        <<
          \set Score.tempoHideNote = ##t
          \compressFullBarRests
          \new Staff <<
            \new Voice { #notes }
          >>
        >>
        \layout {
          #(layout-set-staff-size staffSize)
        }
      }
   #}
)

