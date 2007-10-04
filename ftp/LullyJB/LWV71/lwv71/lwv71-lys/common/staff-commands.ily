%%% -*- Mode: scheme -*-

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Commands for defining staves
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(use-modules (ice-9 format))
#(define gen-unique-context
  ;; Generate a uniqueSchemeContextXX symbol, that may be (hopefully) unique.
  (let ((var-idx -1))
    (lambda ()
      (set! var-idx (1+ var-idx))
      (string->symbol
       (format #f "uniqueSchemeContext~a"
               (list->string (map (lambda (chr)
                                    (integer->char (+ (char->integer #\a)
                                                      (- (char->integer chr)
                                                         (char->integer #\0)))))
                                  (string->list (number->string var-idx)))))))))

newStaff = 
#(define-music-function (parser location music) (ly:music?)
   #{ \new Staff << $music >> #})

newSmallStaff = 
#(define-music-function (parser location music) (ly:music?)
   #{ \new Staff \with {
        fontSize = #-2
        \override StaffSymbol #'staff-space = #(magstep -2)
      } << $music >> #})

newHaraKiriStaff = 
#(define-music-function (parser location music) (ly:music?)
   #{ \new Staff \with { 
        \remove "Axis_group_engraver"
        \consists "Hara_kiri_engraver"
        \override Beam #'auto-knee-gap = #'()
        \override VerticalAxisGroup #'remove-empty = ##t
        \override VerticalAxisGroup #'remove-first = ##t
      } $music #})

newHaraKiriSmallStaff = 
#(define-music-function (parser location music) (ly:music?)
   #{ \new Staff \with { 
        fontSize = #-2
        \override StaffSymbol #'staff-space = #(magstep -2)
        \remove "Axis_group_engraver"
        \consists "Hara_kiri_engraver"
        \override Beam #'auto-knee-gap = #'()
        \override VerticalAxisGroup #'remove-empty = ##t
        \override VerticalAxisGroup #'remove-first = ##t
      } $music #})

newStaffWithLyrics = 
#(define-music-function (parser location music lyrics) (ly:music? ly:music?)
   (let ((name (symbol->string (gen-unique-context))))
     #{  << \context Voice = $name << 
               \set Voice . autoBeaming = ##f
               $music >>
            \lyricsto $name \new Lyrics $lyrics
         >> #}))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Usual staff groups
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dessusHauteContreTailleBasse =
#(define-music-function (parser location) ()
  #{ \new StaffGroup <<
    \newStaff << \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \hauteContre \includeNotes #"haute-contre" >>
    \newStaff << \global \taille \includeNotes #"taille" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >> #})

dessusHauteContreTailleQuinteBasse =
#(define-music-function (parser location) ()
  #{ \new StaffGroup <<
    \newStaff << \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \hauteContre \includeNotes #"haute-contre" >>
    \newStaff << \global \taille \includeNotes #"taille" >>
    \newStaff << \global \quinte \includeNotes #"quinte" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >> #})
