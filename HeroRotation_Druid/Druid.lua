--- ============================ HEADER ============================
--- ======= LOCALIZE =======
-- Addon
local addonName, addonTable = ...
-- HeroDBC
local DBC = HeroDBC.DBC
-- HeroLib
local HL         = HeroLib
local Cache      = HeroCache
local Unit       = HL.Unit
local Player     = Unit.Player
local Target     = Unit.Target
local Pet        = Unit.Pet
local Spell      = HL.Spell
local MultiSpell = HL.MultiSpell
local Item       = HL.Item
-- HeroRotation
local HR         = HeroRotation

--- ============================ CONTENT ============================

-- Spell
if not Spell.Druid then Spell.Druid = {} end
Spell.Druid.Balance = {
  -- Racials
  Berserking                            = Spell(26297),

  -- Abilities
  Barkskin                              = Spell(22812),
  CelestialAlignment                    = Spell(194223),
  EclipseLunar                          = Spell(48518),
  EclipseSolar                          = Spell(48517),
  Innervate                             = Spell(29166),
  Moonfire                              = Spell(8921),
  MoonfireDebuff                        = Spell(164812),
  MoonkinForm                           = Spell(24858),
  Starfall                              = Spell(191034),
  StarfallBuff                          = Spell(191034),
  Starfire                              = Spell(194153),
  Starsurge                             = Spell(78674),
  Sunfire                               = Spell(93402),
  SunfireDebuff                         = Spell(164815),
  Wrath                                 = Spell(190984),
  -- Talents
  ForceofNature                         = Spell(205636),
  FuryofElune                           = Spell(202770),
  Incarnation                           = Spell(102560),
  NaturesBalance                        = Spell(202430),
  SolsticeBuff                          = Spell(343648),
  SouloftheForest                       = Spell(114107),
  Starlord                              = Spell(202345),
  StarlordBuff                          = Spell(279709),
  StellarDrift                          = Spell(202354),
  StellarFlare                          = Spell(202347),
  StellarFlareDebuff                    = Spell(202347),
  TwinMoons                             = Spell(279620),
  WarriorofElune                        = Spell(202425),
  WarriorofEluneBuff                    = Spell(202425),

  -- New Moon Phases
  FullMoon                              = Spell(274283),
  HalfMoon                              = Spell(274282),
  NewMoon                               = Spell(274281),

  -- Covenant Abilities
  AdaptiveSwarm                         = Spell(325727),
  AdaptiveSwarmDebuff                   = Spell(325733),
  AdaptiveSwarmHeal                     = Spell(325748),
  ConvoketheSpirits                     = Spell(323764),
  EmpowerBond                           = Spell(326647),
  KindredSpirits                        = Spell(326434),
  KindredEmpowermentEnergizeBuff        = Spell(327022),
  RavenousFrenzy                        = Spell(323546),
  RavenousFrenzyBuff                    = Spell(323546),

  -- Conduit Effects
  PreciseAlignment                      = Spell(340706),

  -- Legendary Effects
  BOATArcaneBuff                        = Spell(339946),
  BOATNatureBuff                        = Spell(339943),
  OnethsClearVisionBuff                 = Spell(339797),
  OnethsPerceptionBuff                  = Spell(339800),
  PAPBuff                               = Spell(338825),
  TimewornDreambinderBuff               = Spell(340049),

  -- Item Effects

  -- Custom
  Pool                                  = Spell(999910),
}

Spell.Druid.Feral = {
  Regrowth                              = Spell(8936),
  BloodtalonsBuff                       = Spell(145152),
  Bloodtalons                           = Spell(155672),
  WildFleshrending                      = Spell(279527),
  CatFormBuff                           = Spell(768),
  CatForm                               = Spell(768),
  ProwlBuff                             = Spell(5215),
  Prowl                                 = Spell(5215),
  BerserkBuff                           = Spell(106951),
  Berserk                               = Spell(106951),
  TigersFury                            = Spell(5217),
  TigersFuryBuff                        = Spell(5217),
  Berserking                            = Spell(26297),
  FeralFrenzy                           = Spell(274837),
  Incarnation                           = Spell(102543),
  IncarnationBuff                       = Spell(102543),
  BalanceAffinity                       = Spell(197488),
  Shadowmeld                            = Spell(58984),
  Rake                                  = Spell(1822),
  RakeDebuff                            = Spell(155722),
  SavageRoar                            = Spell(52610),
  SavageRoarBuff                        = Spell(52610),
  PrimalWrath                           = Spell(285381),
  RipDebuff                             = Spell(1079),
  Rip                                   = Spell(1079),
  Sabertooth                            = Spell(202031),
  Maim                                  = Spell(22570),
  IronJawsBuff                          = Spell(276026),
  FerociousBiteMaxEnergy                = Spell(22568),
  FerociousBite                         = Spell(22568),
  PredatorySwiftnessBuff                = Spell(69369),
  LunarInspiration                      = Spell(155580),
  BrutalSlash                           = Spell(202028),
  ThrashCat                             = Spell(106830),
  ThrashCatDebuff                       = Spell(106830),
  ScentofBlood                          = Spell(285564),
  ScentofBloodBuff                      = Spell(285646),
  SwipeCat                              = Spell(106785),
  MoonfireCat                           = Spell(155625),
  MoonfireCatDebuff                     = Spell(155625),
  ClearcastingBuff                      = Spell(135700),
  Shred                                 = Spell(5221),
  SkullBash                             = Spell(106839),
  ShadowmeldBuff                        = Spell(58984),
  JungleFury                            = Spell(274424),
  RazorCoralDebuff                      = Spell(303568),
  ConductiveInkDebuff                   = Spell(302565),
  BloodoftheEnemy                       = Spell(297108),
  MemoryofLucidDreams                   = Spell(298357),
  PurifyingBlast                        = Spell(295337),
  RippleInSpace                         = Spell(302731),
  ConcentratedFlame                     = Spell(295373),
  TheUnboundForce                       = Spell(298452),
  WorldveinResonance                    = Spell(295186),
  ReapingFlames                         = Spell(310690),
  FocusedAzeriteBeam                    = Spell(295258),
  GuardianofAzeroth                     = Spell(295840),
  RecklessForceBuff                     = Spell(302932),
  ConcentratedFlameBurn                 = Spell(295368),
  Thorns                                = Spell(236696),
  
  -- Icon for pooling energy
  -- PoolResource                          = Spell(9999000010)
  PoolResource                         	= Spell(999910),
}; 

Spell.Druid.Guardian = {
  BearForm                              = Spell(5487),
  CatForm                               = Spell(768),
  BloodFury                             = Spell(20572),
  Berserking                            = Spell(26297),
  ArcaneTorrent                         = Spell(50613),
  LightsJudgment                        = Spell(255647),
  Fireblood                             = Spell(265221),
  AncestralCall                         = Spell(274738),
  BagofTricks                           = Spell(312411),
  Barkskin                              = Spell(22812),
  LunarBeam                             = Spell(204066),
  BristlingFur                          = Spell(155835),
  Maul                                  = Spell(6807),
  Ironfur                               = Spell(192081),
  LayeredMane                           = Spell(279552),
  Pulverize                             = Spell(80313),
  PulverizeBuff                         = Spell(158792),
  ThrashBearDebuff                      = Spell(192090),
  Moonfire                              = Spell(8921),
  MoonfireDebuff                        = Spell(164812),
  Incarnation                           = Spell(102558),
  IncarnationBuff                       = Spell(102558),
  Thrash                                = MultiSpell(77758, 106830),
  Swipe                                 = MultiSpell(213771, 106785),
  Mangle                                = Spell(33917),
  GalacticGuardian                      = Spell(203964),
  GalacticGuardianBuff                  = Spell(213708),
  PoweroftheMoon                        = Spell(273367),
  FrenziedRegeneration                  = Spell(22842),
  BalanceAffinity                       = Spell(197488),
  WildChargeTalent                      = Spell(102401),
  WildChargeBear                        = Spell(16979),
  SurvivalInstincts                     = Spell(61336),
  SkullBash                             = Spell(106839),
  AnimaofDeath                          = Spell(294926),
  MemoryofLucidDreams                   = Spell(298357),
  Conflict                              = Spell(303823),
  WorldveinResonance                    = Spell(295186),
  RippleInSpace                         = Spell(302731),
  ConcentratedFlame                     = Spell(295373),
  ConcentratedFlameBurn                 = Spell(295368),
  SharpenedClawsBuff                    = Spell(279943),
  RazorCoralDebuff                      = Spell(303568),
  ConductiveInkDebuff                   = Spell(302565)
};

Spell.Druid.Restoration = {
  BloodFury                             = Spell(20572),
  Berserking                            = Spell(26297),
  ArcaneTorrent                         = Spell(50613),
  LightsJudgment                        = Spell(255647),
  Fireblood                             = Spell(265221),
  AncestralCall                         = Spell(274738),
  BagofTricks                           = Spell(312411),
  BalanceAffinity                       = Spell(197632),
  FeralAffinity                         = Spell(197490),
  CatForm                               = Spell(768),
  CatFormBuff                           = Spell(768),
  MoonkinForm                           = Spell(197625),
  MoonkinFormBuff                       = Spell(197625),
  Prowl                                 = Spell(5215),
  Sunfire                               = Spell(93402),
  SunfireDebuff                         = Spell(164815),
  Moonfire                              = Spell(8921),
  MoonfireDebuff                        = Spell(164812),
  Starsurge                             = Spell(197626),
  LunarEmpowerment                      = Spell(164547),
  LunarStrike                           = Spell(197628),
  SolarWrath                            = Spell(5176),
  Rake                                  = Spell(1822),
  RakeDebuff                            = Spell(155722),
  Rip                                   = Spell(1079),
  RipDebuff                             = Spell(1079),
  FerociousBite                         = Spell(22568),
  SwipeCat                              = Spell(213764),
  Shred                                 = Spell(5221),
  MemoryofLucidDreams                   = Spell(298357),
  ConcentratedFlame                     = Spell(295373),
  ConcentratedFlameBurn                 = Spell(295368),
  WorldveinResonance                    = Spell(295186),
  Shadowmeld                            = Spell(58984),
  Pool                                  = Spell(999910)
};

if not Item.Druid then Item.Druid = {} end
Item.Druid.Balance = {
  -- Potion/Trinkets
  PotionofSpectralIntellect             = Item(307096),
  EmpyrealOrdinance                     = Item(180117),
  InscrutableQuantumDevice              = Item(179350),
  SoullettingRuby                       = Item(178809)
  -- Other "On-Use"
} 

Item.Druid.Feral = {
  PotionofFocusedResolve                = Item(168506),
  PocketsizedComputationDevice          = Item(167555, {13, 14}),
  AshvanesRazorCoral                    = Item(169311, {13, 14}),
  AzsharasFontofPower                   = Item(169314, {13, 14})
};

Item.Druid.Guardian = {
  PotionofFocusedResolve           = Item(168506),
  PocketsizedComputationDevice     = Item(167555, {13, 14}),
  AshvanesRazorCoral               = Item(169311, {13, 14})
}; 

Item.Druid.Restoration = {
  PotionofUnbridledFury            = Item(169299),
  PocketsizedComputationDevice     = Item(167555, {13, 14}),
}; 