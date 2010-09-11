/* Mort soudaine */
DELETE FROM spell_proc_event WHERE entry IN(29723, 29725, 29724);
INSERT INTO spell_proc_event
 (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
 VALUES('29723','0','4','174064750','174064750','174064750','17732','17732','17732','0','0','0','0','0', '0','0','0'),('29725','0','4','174064750','174064750','174064750','17732','17732','17732','0','0','0','0','0', '0','0','0'),('29724','0','4','174064750','174064750','174064750','17732','17732','17732','0','0','0','0','0', '0','0','0');