% Various stuff common to the score and the different solo parts,
% put in one place to ensure consistency.

piece1 = "Allegro"
piece2 = "Adagio"
piece3 = "Allegro Assai"
violin_midi_instrument = "violin"
viola_midi_instrument = "viola"
continuo_midi_instrument = "cello"
accomp_midi_instrument = "harpsichord"

\paper {
    linewidth = 18.0 \cm;
    \translator { \StaffContext \consists "Bar_number_engraver"; }
    \translator { \StaffContext timeSignatureStyle = "C"; }
    \translator { \ScoreContext skipBars = 1; }
}
