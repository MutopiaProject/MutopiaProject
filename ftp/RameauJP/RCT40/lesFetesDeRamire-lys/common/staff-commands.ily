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

newHaraKiriStaff = 
#(define-music-function (parser location music) (ly:music?)
   #{ \new Staff \with { 
        \remove "Axis_group_engraver"
        \consists "Hara_kiri_engraver"
        \override Beam #'auto-knee-gap = #'()
        \override VerticalAxisGroup #'remove-first = ##f
        \override VerticalAxisGroup #'remove-empty = ##t
      } $music #})

newHaraKiriStaffB = 
#(define-music-function (parser location music) (ly:music?)
   #{ \new Staff \with { 
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
