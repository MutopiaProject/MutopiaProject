triolen = {
   #(override-auto-beam-setting '(end * * * *) 1 8)
   #(override-auto-beam-setting '(end * * * *) 2 8)
   #(override-auto-beam-setting '(end * * * *) 3 8)
   #(override-auto-beam-setting '(end * * * *) 4 8)
   #(override-auto-beam-setting '(end * * * *) 5 8)
   #(override-auto-beam-setting '(end * * * *) 6 8)
   #(override-auto-beam-setting '(end * * * *) 7 8)
   #(override-auto-beam-setting '(end * * * *) 8 8)
}

duolen = {
   #(revert-auto-beam-setting '(end * * * *) 1 8)
   #(revert-auto-beam-setting '(end * * * *) 2 8)
   #(revert-auto-beam-setting '(end * * * *) 3 8)
   #(revert-auto-beam-setting '(end * * * *) 4 8)
   #(revert-auto-beam-setting '(end * * * *) 5 8)
   #(revert-auto-beam-setting '(end * * * *) 6 8)
   #(revert-auto-beam-setting '(end * * * *) 7 8)
   #(revert-auto-beam-setting '(end * * * *) 8 8)
}

tripletBeams = {
   #(override-auto-beam-setting '(end 1 24 * *) 1 8)
   #(override-auto-beam-setting '(end 1 24 * *) 2 8)
   #(override-auto-beam-setting '(end 1 24 * *) 3 8)
   #(override-auto-beam-setting '(end 1 24 * *) 4 8)
   #(override-auto-beam-setting '(end 1 24 * *) 5 8)
   #(override-auto-beam-setting '(end 1 24 * *) 6 8)
   #(override-auto-beam-setting '(end 1 24 * *) 7 8)
   #(override-auto-beam-setting '(end 1 24 * *) 8 8)
}

showBrackets = {
   \override TupletBracket #'bracket-visibility = ##t
}

hideBrackets = {
   \override TupletBracket #'bracket-visibility = ##f
}

showTripletNumber = {
   \set tupletNumberFormatFunction = #denominator-tuplet-formatter
}

hideTripletNumber = {
   \set tupletNumberFormatFunction = #'()
}