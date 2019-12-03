# if Category.all.empty?
#   Category.create en: 'noun',         de: 'Nomen',        ru: 'существительное'
#   Category.create en: 'adjective',    de: 'Adjektiv',     ru: 'прилагательное'
#   Category.create en: 'verb',         de: 'Verb',         ru: 'глагол'
#   Category.create en: 'pronoun',      de: 'Pronomen',     ru: 'местоимение'
#   Category.create en: 'numeral',      de: 'Numerale',     ru: 'числительное'
#   Category.create en: 'adverb',       de: 'Adverb',       ru: 'наречие'
#   Category.create en: 'article',      de: 'Artikel',      ru: 'артикль'
#   Category.create en: 'pretext',      de: 'Präposition',  ru: 'предлог'
#   Category.create en: 'union',        de: 'Konjuktion',   ru: 'союз'
#   Category.create en: 'particle',     de: 'Partikel',     ru: 'частица'
#   Category.create en: 'interjection', de: 'Interjektion', ru: 'междометие'
#   Category.create en: 'expression',   de: 'Ausdruck',     ru: 'выражение'
#   Category.create en: 'personal pronoun', de: 'Personalpronomen', ru: 'личное местоимение'
# end

if Entry.all.empty?
  pos = 'Nomen'
  Entry.create pos: pos, art: 'das', de: 'Alter',    pl: 'Alter',       en: 'age',        ru: 'возраст'
  Entry.create pos: pos, art: 'der', de: 'Beruf',    pl: 'Berufe',      en: 'profession', ru: 'профессия'
  Entry.create pos: pos, art: 'das', de: 'Beispiel', pl: 'Beispiele',   en: 'example',    ru: 'пример'
  Entry.create pos: pos, art: 'das', de: 'Verb',     pl: 'Verben',      en: 'verb',       ru: 'глагол'
  Entry.create pos: pos, art: 'das', de: 'Nomen',    pl: 'Nomen',       en: 'noun',       ru: 'существительное'
  Entry.create pos: pos, art: 'das', de: 'Auto',     pl: 'Autos',       en: 'car',        ru: 'автомобиль'
  Entry.create pos: pos, art: 'das', de: 'Foto',     pl: 'Fotos',       en: 'photo',      ru: 'фотография'
  Entry.create pos: pos, art: 'der', de: 'Stuhle',   pl: 'Stühle',      en: 'chair',      ru: 'стул'
  Entry.create pos: pos, art: 'die', de: 'Lampe',    pl: 'Lampen',      en: 'lamp',       ru: 'лампа'
  Entry.create pos: pos, art: 'das', de: 'Haus',     pl: 'die Häuser',  en: 'house',      ru: 'дом'
  Entry.create pos: pos, art: 'der', de: 'Tisch',    pl: 'Tische',      en: 'table',      ru: 'стол'

  pos = 'Personalpronoun'
  Entry.create pos: pos, de: 'ich', en: 'I',    ru: 'я',  trxn: 'iç'
  Entry.create pos: pos, de: 'du',  en: 'you',  ru: 'ты', trxn: 'du:'
  Entry.create pos: pos, de: 'Sie', en: 'You',  ru: 'Вы', trxn: 'zi:'
  Entry.create pos: pos, de: 'er',  en: 'he',   ru: 'он'
  Entry.create pos: pos, de: 'sie', en: 'she',  ru: 'она'
  Entry.create pos: pos, de: 'es',  en: 'it',   ru: 'оно'
  Entry.create pos: pos, de: 'wir', en: 'we',   ru: 'мы'
  Entry.create pos: pos, de: 'ihr', en: 'you',  ru: 'вы'
  Entry.create pos: pos, de: 'sie', en: 'they', ru: 'они'

  pos = 'Verb'
  Entry.create pos: pos, de: 'arbeiten',       en: 'work',        ru: 'работать'
  Entry.create pos: pos, de: 'haben',          en: 'have',        ru: 'иметь'
  Entry.create pos: pos, de: 'sein',           en: 'be',          ru: 'быть'
  Entry.create pos: pos, de: 'wohnen',         en: 'reside',      ru: 'проживать'
  Entry.create pos: pos, de: 'heißen',         en: 'be called',   ru: 'зваться'
  Entry.create pos: pos, de: 'buchstabieren',  en: 'spell',       ru: 'произносить по буквам'
  Entry.create pos: pos, de: 'müchten',        en: 'would like',  ru: 'хотеть бы'
  Entry.create pos: pos, de: 'leben',          en: 'live',        ru: 'жить'
  Entry.create pos: pos, de: 'sprechen',       en: 'speak',       ru: 'говорить'
  Entry.create pos: pos, de: 'studieren',      en: 'study',       ru: 'учиться (в ВУЗе)'
  Entry.create pos: pos, de: 'warten',         en: 'wait',        ru: 'ждать, ожидать'
  Entry.create pos: pos, de: 'werden',         en: 'become',      ru: 'становиться'
  Entry.create pos: pos, de: 'lernen',         en: 'learn',       ru: 'учить, учиться'
  Entry.create pos: pos, de: 'entschuldigen',  en: 'apologize',   ru: 'извинять'
  Entry.create pos: pos, de: 'antworten',      en: 'reply',       ru: 'отвечать'
  Entry.create pos: pos, de: 'bieten',         en: 'ask',         ru: 'спрашивать'
  Entry.create pos: pos, de: 'fahren',         en: 'drive',       ru: 'ехать'
  Entry.create pos: pos, de: 'funktionieren',  en: 'function',    ru: 'работать'
  Entry.create pos: pos, de: 'können',         en: 'can',         ru: 'мочь, быть в состоянии'
end

if Group.all.empty?
  Group.create en: 'strong',    de: 'starke'
  Group.create en: 'weak',      de: 'schwache'
  Group.create en: 'irregular', de: 'irregulär'
  Group.create en: 'modal',     de: 'modal'
end

# https://www.de-online.ru/gram-tabelle/tablica_Deutsch-online.pdf
if Rule.all.empty?
  Rule.create scheme: 'a-i-a',    assoc: 'мАлИнА',    sample: 'ловить — fangen — fing — gefangen'
  Rule.create scheme: 'a-ie-a',   assoc: 'мАлИнА',    sample: 'жарить — braten — briet — gebraten'
  Rule.create scheme: 'a-u-a ',   assoc: 'мАльчУгАн', sample: 'носить — tragen — trug — getragen'
  Rule.create scheme: 'ä-a-o',                        sample: 'рожать — gebären — gebar — geboren'
  Rule.create scheme: 'ä-o-o',    assoc: 'бЕльмОндО', sample: 'обдумывать — erwägen — erwog — erwogen'
  Rule.create scheme: 'au-ie-au',                     sample: 'бежать — laufen (läuft) — lief — gelaufen'
  Rule.create scheme: 'e-a-e',    assoc: 'тЕрАпЕвт',  sample: 'читать — lesen — las — gelesen'
  Rule.create scheme: 'e-a-o',    assoc: 'пЕдАгОг',   sample: 'брать — nehmen — nahm — genommen'
  Rule.create scheme: 'e-o-o',    assoc: 'бЕльмОндО', sample: 'поднимать — heben — hob — gehoben'
  Rule.create scheme: 'ei-i-i',   assoc: 'дАЙкИрИ',   sample: 'резать — schneiden — schnitt — geschnitten'
  Rule.create scheme: 'ei-ie-ie', assoc: 'дАЙкИрИ',   sample: 'писать — sreiben — srieb — gesrieben'
  Rule.create scheme: 'ei-ie-ei'
  Rule.create scheme: 'i-a-o',    assoc: 'пИфАгОр',   sample: 'побеждать — gewinnen — gewann — gewonnen'
  Rule.create scheme: 'i-a-e',    assoc: 'дИАбЕт',    sample: 'просить — bitten — bat — gebeten'
  Rule.create scheme: 'i-a-u',    assoc: 'сИрАкУзы',  sample: 'находить — finden — fand — gefunden'
  Rule.create scheme: 'ie-o-o',   assoc: 'кИмОнО',    sample: 'летать — fliegen — flog — geflogen'
  Rule.create scheme: 'o-ie-u'
  Rule.create scheme: 'u-ie-u',                       sample: 'кричать, звать — rufen — rief — gerufen'
  Rule.create scheme: 'ö-o-o',    assoc: 'бЕльмОндО'
  Rule.create scheme: 'ü-o-o',    assoc: 'бЕльмОндО', sample: 'лгать - lügen - log - gelog'
  Rule.create scheme: 'nicht anwendbar'
  Rule.create scheme: 'nicht definiert'
end 

if Verb.all.empty?
  Verb.create group_id: 1, rule_id: 3,    infinitive: 'beginnen',  prasens: 'beginnt',
              simple: 'begann',           participle: 'begonnen',  trxn: 'b ə g ɪ n ə n',
              ru:     'начинать',         en: 'begin', aux: 0
  Verb.create group_id: 1, rule_id: 8,    infinitive:  'fahren',   prasens: 'fährt',
              simple: 'fuht',             participle:  'gefahren', trxn: 'f a: r ə n',
              ru:     'ехать, ездить',    en: 'drive', aux: 0
  Verb.create group_id: 1, rule_id: 8,    infinitive:  'wachsen',   prasens: 'wachst',
              simple: 'wuchs',            participle:  'gewachsen', trxn: 'v a k s ə n',
              ru:     'расти, вырастать', en: 'grow',  aux: 1
  Verb.create group_id: 1, rule_id: 8,    infinitive:  'waschen',  prasens: 'wäscht',
              simple: 'wusch',            participle:  'gewachen', trxn: 'v a ʃ ə n',
              ru:     'мыть',             en: 'wash',  aux: 0
  Verb.create group_id: 1, rule_id: 5,    infinitive:  'befehlen', prasens: 'befiehlt',
              simple: 'befahl',           participle:  'befohlen', trxn: 'b ə f   e: l ə n',
              ru:     'приказывать',      en: 'order',  aux: 0
  Verb.create group_id: 1, rule_id: 10,   infinitive:  'braten',   prasens: 'brät',
              simple: 'briet',            participle:  'gebraten', trxn: 'b r a: t ə n',
              ru:     'жарить',           en: 'fry',    aux: 0
  Verb.create group_id: 1, rule_id: 6,    infinitive:  'essen',    prasens: 'ißt',
              simple: 'aß',               participle:  'gegessen', trxn: 'ɛ s ə n',
              ru:     'кушать, питаться', en: 'eat',    aux: 0
  Verb.create group_id: 1, rule_id: 1,    infinitive:  'sreiben',   prasens: 'schreibt',
              simple: 'srieb',            participle:  'gesrieben', trxn: 's r aɪ b ə n',
              ru:     'писать, написать', en: 'write',  aux: 0
  Verb.create group_id: 1, rule_id: 2,    infinitive:  'fliegen',   prasens: 'fliegt',
              simple: 'flog',             participle:  'geflogen',  trxn: 'f l i: g ə n',
              ru:     'летать, лететь',   en: 'fly',    aux: 1
  Verb.create group_id: 1, rule_id: 3,    infinitive:  'gewinnen',  prasens: 'gewinnt',
              simple: 'gewann',           participle:  'gewonne',   trxn: 'g ə v ɪ n ə n',
              ru:     'побеждать, выигрывать', en: 'win', aux: 1
  Verb.create group_id: 1, rule_id: 4,    infinitive:  'finden',    prasens: 'findet',
              simple: 'fand',             participle:  'gefunden',  trxn: 'f ɪ n d ə n',
              ru:     'находить',         en: 'find',   aux: 0
  Verb.create group_id: 1, rule_id: 5,    infinitive:  'nehmen',    prasens: 'nimmt',
              simple: 'nahm',             participle:  'genommen',  trxn: 'n e: m ə n',
              ru:     'брать, взять',     en: 'take',   aux: 0
  Verb.create group_id: 1, rule_id: 6,    infinitive:  'lesen',     prasens: 'liest',
              simple: 'las',              participle:  'gelesen',   trxn: 'l e: z ə n',
              ru:     'читать',           en: 'read',   aux: 0
  Verb.create group_id: 1, rule_id: 7,    infinitive:  'bitten',    prasens: 'bittet',
              simple: 'bat',              participle:  'gebeten',   trxn: 'b ɪ t ə n',
              ru:     'просить',          en: 'read',   aux: 0
  Verb.create group_id: 1, rule_id: 8,    infinitive:  'tragen',    prasens: 'trägt',
              simple: 'trug',             participle:  'getragen',  trxn: 't r a: g ə n',	
              ru:     'носить',           en: 'wear',   aux: 0
  Verb.create group_id: 1, rule_id: 9,    infinitive:  'heben',     prasens: 'hebt',
              simple: 'hob',              participle:  'gehobe',    trxn: 'h e: b ə n',	
              ru:     'поднимать',        en: 'lift',   aux: 0
end

if Example.all.empty?
  verb_id = Verb.find_by(infinitive: 'fahren').id
  Example.create verb_id: verb_id, de: 'Woher fährst du?',
                                   ru: 'Откуда ты?', en: 'Where are you from?'
  verb_id = Verb.find_by(infinitive: 'wachsen').id
  Example.create verb_id: verb_id, de: 'Der Kind wächst schnell.',
                                   ru: 'Ребенок быстро растет.', en: 'he child is growing fast.'
                                 
end

if PersonalPronoun.all.empty?
  PersonalPronoun.create de: 'ich',         en: 'I',           ru: 'я'
  PersonalPronoun.create de: 'du',          en: 'you',         ru: 'ты'
  PersonalPronoun.create de: 'er, sie, es', en: 'he, she, it', ru: 'он, она, оно'
  PersonalPronoun.create de: 'wir',         en: 'we',          ru: 'мы'
  PersonalPronoun.create de: 'ihr',         en: 'you',         ru: 'вы'
  PersonalPronoun.create de: 'sie, Sie',    en: 'they, You',   ru: 'они, Вы'
end