systemStartLine = #(define-music-function (parser location)()
#{
   \set StaffGroup.systemStartDelimiter = #'SystemStartBracket
      \override StaffGroup.SystemStartBracket.style = #'bar-line
      \override StaffGroup.SystemStartBracket.thickness = #3.6
      \override StaffGroup.SystemStartBracket.X-offset = #-0.9
#})

