unit Faker;

interface

type
  /// <summary>This Type provides fake/random data.</summary>
  TFaker = class
  private

    class function randVal(aArray: array of String): string;
    class function replace(aFullString, aSubString: string; aReplaceWith: string = ''): string; overload;
    class function replace(aFullString: string; aSubStringArray: array of string; aReplaceWith: string = ''): string; overload;

  public

    const
    /// <summary>
    /// Lorem Ipsum [...]
    /// </summary>
    LOREM_IPSUM =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' +
      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.' +
      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.' +
      'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

    /// <summary>
    /// Random Male/Female/Non-binary names
    /// </summary>
    NAMES: array [0 .. 266] of string = ('Mario Speedwagon', 'Petey Cruiser', 'Anna Sthesia', 'Paul Molive', 'Anna Mull', 'Gail Forcewind',
      'Paige Turner', 'Bob Frapples', 'Walter Melon', 'Nick R. Bocker', 'Barb Ackue', 'Buck Kinnear', 'Greta Life', 'Ira Membrit',
      'Shonda Leer', 'Brock Lee', 'Maya Didas', 'Rick O Shea', 'Pete Sariya', 'Monty Carlo', 'Sal Monella', 'Sue Vaneer', 'Cliff Hanger',
      'Barb Dwyer', 'Terry Aki', 'Cory Ander', 'Robin Banks', 'Jimmy Changa', 'Barry Wine', 'Wilma Mumduya', 'Buster Hyman', 'Poppa Cherry',
      'Zack Lee', 'Don Stairs', 'Saul T. Balls', 'Peter Pants', 'Hal Appeno ', 'Otto Matic', 'Moe Fugga', 'Graham Cracker', 'Tom Foolery',
      'Al Dente', 'Bud Wiser', 'Polly Tech', 'Holly Graham', 'Frank N. Stein', 'Cam L. Toe', 'Pat Agonia', 'Tara Zona', 'Barry Cade',
      'Phil Anthropist ', 'Marvin Gardens', 'Phil Harmonic ', 'Arty Ficial', 'Will Power', 'Donatella Nobatti', 'Juan Annatoo', 'Stew Gots',
      'Anna Rexia', 'Bill Emia', 'Curt N. Call', 'Max Emum', 'Minnie Mum', 'Bill Yerds', 'Hap E. Birthday', 'Matt Innae', 'Polly Science',
      'Tara Misu', 'Ed U. Cation', 'Gerry Atric', 'Kerry Oaky', 'Midge Itz', 'Gabe Lackmen', 'Mary Christmas', 'Dan Druff', 'Jim Nasium',
      'Angie O. Plasty', 'Ella Vator', 'Sal Vidge', 'Bart Ender', 'Artie Choke', 'Hans Olo', 'Marge Arin', 'Hugh Briss', 'Gene Poole',
      'Ty Tanic', 'Manuel Labor', 'Lynn Guini', 'Claire Voyant', 'Peg Leg', 'Jack E. Sack', 'Marty Graw', 'Ash Wednesday', 'Olive Yu',
      'Gene Jacket', 'Tom Atoe', 'Doug Out', 'Sharon Needles', 'Beau Tie', 'Serj Protector', 'Marcus Down', 'Warren Peace', 'Bud Jet',
      'Barney Cull', 'Marion Gaze', 'Eric Shun', 'Mal Practice', 'Ed Itorial', 'Rick Shaw', 'Paul Issy', 'Ben Effit', 'Kat E. Gory',
      'Justin Case', 'Louie Z. Ana', 'Aaron Ottix', 'Ty Ballgame', 'Anne Fibbiyon', 'Barry Cuda', 'John Withawind', 'Joe Thyme',
      'Mary Goround', 'Marge Arita', 'Frank Senbeans', 'Bill Dabear', 'Ray Zindaroof', 'Adam Zapple', 'Lewis N. Clark', 'Matt Schtick',
      'Sue Shee', 'Chris P. Bacon', 'Doug Lee Duckling', 'Mason Protesters', 'Sil Antro', 'Cal Orie', 'Sara Bellum', 'Al Acart',
      'Marv Ellis', 'Evan Shlee', 'Terry Bull', 'Mort Ission', 'Mark Ette', 'Ken Tucky', 'Louis Ville', 'Colin Oscopy', 'Fred Attchini',
      'Al Fredo', 'Penny Tration', 'Reed Iculous', 'Chip Zinsalsa', 'Matt Uhrafact', 'Jack Dup', 'Mike Roscope', 'Lou Sinclark',
      'Faye Daway', 'Javy Cado', 'Tom Ollie', 'Sam Buca', 'Phil Anderer', 'Sam Owen', 'Mary Achi', 'Ray Cyst', 'Curtis E. Flush',
      'Holland Oats', 'Helen Highwater', 'Eddy Kitt', 'Al Toesacks', 'Sir Kim Scision', 'Elle Bowdrop', 'Yu Tube', 'Ellis Dee',
      'Anna Lytics', 'Sara Bellum', 'Penny Trate', 'Phil Erup', 'Jenna Side', 'Mary Nara', 'Mick Donalds', 'Amber Alert', 'Vic Tory',
      'Bobby Pin', 'Dom Inate', 'Hugh Miliation', 'Christian Mingle', 'Juan Soponatime', 'Dante Sinferno', 'Ed Zupp', 'Sarah Yevo',
      'Jess Thetip', 'Arthur Itis', 'Faye Sbook', 'Carrie R. Pigeon', 'Rachel Slurs', 'Ty Pryder', 'Cole Slaw', 'Pat Ernity', 'Deb Utant',
      'Luke Warm', 'Travis Tee', 'Clara Fication', 'Paul Itician', 'Deb Utant', 'Moe Thegrass', 'Carol Sell', 'Scott Schtape',
      'Cody Pendant', 'Frank Furter', 'Barry Dalive', 'Mort Adella', 'Ray Diation', 'Mack Adamia', 'Farrah Moan', 'Theo Retical',
      'Eda Torial', 'Mae O Nayse', 'Bella Ruse', 'Yuri thra', 'Tucker Doubt', 'Cara Larm', 'Abel Body', 'Sal Ami', 'Colin Derr',
      'Cathy Derr', 'Colin O Scopy', 'Mel Anoma', 'Adam Up', 'Lou Zing', 'Mark Key', 'Sven Gineer', 'Mick Rib', 'Benny Ficial',
      'Genie Inabottle', 'Gene Therapy', 'Reggie Stration', 'Lou Ow', 'Lance Dorporal', 'Lou Tenant', 'Nick Knack', 'Patty Whack',
      'Reuben Sandwich', 'Hugo Slavia', 'Aaron Spacemuseum', 'Petey Atricks', 'Dan Delion', 'Terry Torial', 'Cal Q. Later',
      'Jen Trification', 'Indy Nile', 'Ray Volver', 'Minnie Strone', 'Gustav Wind', 'Paul Samic', 'Vinny Gret', 'Joyce Tick', 'Cliff Diver',
      'Earl E. Riser', 'Cooke Edoh', 'Jen Youfelct', 'Reanne Carnation', 'Paul Misunday', 'Chris P. Cream', 'Gio Metric', 'Caire Innet',
      'Marsha Mello', 'Manny Petty', 'Val Adictorian', 'Lucy Tania', 'Jaques Amole');

    /// <summary>
    /// Most used email domains
    /// </summary>
    EMAIL_DOMAINS: array [0 .. 99] of string = ('gmail.com', 'yahoo.com', 'hotmail.com', 'aol.com', 'hotmail.co.uk', 'hotmail.fr',
      'msn.com', 'yahoo.fr', 'wanadoo.fr', 'orange.fr', 'comcast.net', 'yahoo.co.uk', 'yahoo.com.br', 'yahoo.co.in', 'live.com',
      'rediffmail.com', 'free.fr', 'gmx.de', 'web.de', 'yandex.ru', 'ymail.com', 'libero.it', 'outlook.com', 'uol.com.br', 'bol.com.br',
      'mail.ru', 'cox.net', 'hotmail.it', 'sbcglobal.net', 'sfr.fr', 'live.fr', 'verizon.net', 'live.co.uk', 'googlemail.com', 'yahoo.es',
      'ig.com.br', 'live.nl', 'bigpond.com', 'terra.com.br', 'yahoo.it', 'neuf.fr', 'yahoo.de', 'alice.it', 'rocketmail.com', 'att.net',
      'laposte.net', 'facebook.com', 'bellsouth.net', 'yahoo.in', 'hotmail.es', 'charter.net', 'yahoo.ca', 'yahoo.com.au', 'rambler.ru',
      'hotmail.de', 'tiscali.it', 'shaw.ca', 'yahoo.co.jp', 'sky.com', 'earthlink.net', 'optonline.net', 'freenet.de', 't-online.de',
      'aliceadsl.fr', 'virgilio.it', 'home.nl', 'qq.com', 'telenet.be', 'me.com', 'yahoo.com.ar', 'tiscali.co.uk', 'yahoo.com.mx',
      'voila.fr', 'gmx.net', 'mail.com', 'planet.nl', 'tin.it', 'live.it', 'ntlworld.com', 'arcor.de', 'yahoo.co.id', 'frontiernet.net',
      'hetnet.nl', 'live.com.au', 'yahoo.com.sg', 'zonnet.nl', 'club-internet.fr', 'juno.com', 'optusnet.com.au', 'blueyonder.co.uk',
      'bluewin.ch', 'skynet.be', 'sympatico.ca', 'windstream.net', 'mac.com', 'centurytel.net', 'chello.nl', 'live.ca', 'aim.com',
      'bigpond.net.au');

    PASSWORDS: array [0 .. 99] of string = ('rU5FBfTtLCZ4tt', 'hZfmhCAbxaN9bQ', 'vvvkE8umrH55CF', 'UpmdMHeQQUWfak', 'RWhTznx23RQ2Qn',
      'EvGWjLf33vm7TL', '6Ra99fBKvPgTWs', 'uuev44UXNPtZPq', '92yrNuRyPrEZGn', '4YzMNMbPhsTCNF', '5DFNn6Gk9mfbxP', 'zQUwxjWxSE4bmh',
      'x8FRft5ymtFnKF', 'UJ4naDCMgrcRGz', 'k8RhAr2nvEZrT7', 'cd2FFYTPW9vLHy', '5prJnUSD4bKFNC', 'QZEmhZMRQxrhKg', '7qQ8DckhR9fPsc',
      'bpyDXvgkQmtDvt', 'TQELgvkqLtHh2p', 'KxNEEPt9q4bUYJ', 'uvBS4De6byUAmX', 'ErYhejB9fa7Eyn', 'eFP2L9GtkRCfXg', 'YMe6759Vhr998Q',
      'Z7E9f4jMVsHUTc', 'yvqQpRyEkywt3G', 'gqKa8pkytUBauQ', 'E27KCgfHaQdZcU', 'kqt5jeVCt99QmC', 'cFvmMuNSjfMXTX', 'gK9nP4rLNZ87pc',
      'Pk9zZua9MSUyQ6', 'YKNQD82v2TX4bL', 'pVDGQWyzJeWkCs', 'fbsjTnRdmBVsr7', 'nbp3vg6xUpvH5A', 'tTKkKsETjw3Q7D', 'R7xWHCHQ2RdHFR',
      '9nGAkQ3PvGUTaB', 'CgWS8aK6Z24QYv', 'bg6QkjtfRS6sU5', 'rbyyvaSGnDCJBV', 'D5PRySPG9ShvNZ', 's2D2weNxVusCzL', 'NB5M9hyMHzjxyx',
      '4ZtBjUzuCRAL7f', 'Y9xpcY3tqdaxuB', 'bwgzvKpeZRqpQf', 'k9KjbDLydUnMAz', 'rbsKXCdMLmbhYT', 'KsjAZcNRruWetm', 'CeHSMpZMRMRR7c',
      'g7DcLnRqFVD7YL', 'jEqDJ7ySHA4W8X', 'yQHVQnutFTvmCA', 'aMAmVgkLr6myYy', 'p3V3sRL56RsBPp', 'BJMYLATKjWKZLk', '6HMephVTAnTVxg',
      'AryUEHayXxWV9Y', 'FNdcDCR6HwWGML', '8Q3zy9KR2nbtEn', 'WDuRucgrrewNbr', 'F69YYjYWKHBAGu', 'YG3EtbMxNMtwaA', 'r39WWUVjP43DEP',
      'WVWZkRcWjtFMU4', 'cZDefZMXaxXZHV', '3KJgEjbsUYbB4a', 'YmMbSBrXsfrbhh', 'pk27dvJaGGWthj', 'a2BUqTaSJ2sXTf', 'huqQgJcqFBQ49E',
      'EGjRYsYCEbhZrq', 'uC3DP924cZWCqf', 'tBRftq5WGtA4aK', 'S3E8CLjVPnZNdJ', 'QjBT8hwjZSttQs', 'd6f3fpvTHhBam2', 'Bqd6nVp5j67rKT',
      'WqsNxNHQZSZetg', 'L64P7XXEhXWEHX', '7GE5AtwL96HsTu', 'WDkF3xeAGvpXm8', 'QP44Je5RknMb9T', 'ACULGJHgVmLawB', '8VUCKWn6VYYfBR',
      'StDuWZwTEYaPQM', 'fGTe75jbPE8Wnj', 'uzxvVQaHa37Z8z', '9c3bCJNqPpMNNC', 'zgdKjwkQdDzRLy', 'FUt2LZumxS8RAS', 'qKQxxKBr5dq2bH',
      'gLqd38F6ZVrTcN', 'asRpuUmFLZhKur', 'rzapBBaqVbjjjz', 'TKn3wWXt6xryJy');

    /// <summary>
    /// Random things,objects,home stuffs and etc
    /// </summary>
    THINGS: array [0 .. 189] of string = ('plate', 'bread', 'lamp', 'wallet', 'stop sign', 'helmet', 'headphones', 'credit card', 'shawl',
      'thermometer', 'balloon', 'mouse pad', 'toothbrush', 'lip gloss', 'doll', 'paper', 'greeting card', 'water bottle', 'flowers', 'desk',
      'air freshener', 'glow stick', 'toe ring', 'pillow', 'television', 'brocolli', 'door', 'cat', 'apple', 'floor', 'bananas',
      'eye liner', 'phone', 'fake flowers', 'perfume', 'bottle', 'pants', 'controller', 'ice cube tray', 'cup', 'piano', 'glasses',
      'bottle cap', 'candy wrapper', 'lace', 'bow', 'sharpie', 'magnet', 'lotion', 'shoe lace', 'bookmark', 'spring', 'sailboat', 'ipod',
      'truck', 'USB drive', 'house', 'soap', 'buckel', 'thread', 'food', 'slipper', 'box', 'sketch pad', 'picture frame', 'thermostat',
      'clothes', 'drill press', 'coasters', 'speakers', 'cinder block', 'tomato', 'zipper', 'candle', 'chocolate', 'clock',
      'packing peanuts', 'bowl', 'purse', 'twister', 'rubber duck', 'beef', 'tv', 'tooth picks', 'hanger', 'milk', 'cork', 'keyboard',
      'outlet', 'drawer', 'washing machine', 'newspaper', 'CD', 'scotch tape', 'mp3 player', 'book', 'flag', 'clamp', 'bag', 'bracelet',
      'screw', 'sidewalk', 'fridge', 'sticky note', 'toilet', 'couch', 'table', 'photo album', 'cell phone', 'soda can', 'chapter book',
      'pen', 'remote', 'car', 'knife', 'pencil', 'plastic fork', 'playing card', 'mirror', 'leg warmers', 'nail clippers', 'white out',
      'sofa', 'button', 'rusty nail', 'sandal', 'canvas', 'boom box', 'charger', 'street lights', 'ring', 'blanket', 'lamp shade', 'camera',
      'vase', 'shoes', 'seat belt', 'blouse', 'computer', 'nail file', 'eraser', 'sponge', 'glass', 'watch', 'hair tie', 'tire swing',
      'tree', 'soy sauce packet', 'teddies', 'socks', 'puddle', 'cookie jar', 'keys', 'conditioner', 'paint brush', 'towel', 'sand paper',
      'shirt', 'hair brush', 'grid paper', 'money', 'model car', 'sun glasses', 'chalk', 'toothpaste', 'radio', 'mop', 'spoon',
      'rubber band', 'face wash', 'checkbook', 'shampoo', 'needle', 'tissue box', 'carrots', 'chair', 'fork', 'wagon', 'stockings',
      'twezzers', 'rug', 'key chain', 'clay pot', 'deodorant', 'monitor', 'video games', 'pool stick', 'shovel', 'window', 'bed');

    OTAN_ALPHABET: array [0 .. 25] of string = ('Alpha', 'Bravo', 'Charlie', 'Delta', 'Echo', 'Foxtrot', 'Golf', 'Hotel', 'India', 'Juliet',
      'Kilo', 'Lima', 'Mike', 'November', 'Oscar', 'Papa', 'Quebec', 'Romeo', 'Sierra', 'Tango', 'Uniform', 'Victor', 'Whiskey', 'Xray',
      'Yankee', 'Zulu');

    WORDS: array [0 .. 1000] of string = ('bite', 'mate', 'quill', 'back', 'church', 'pear', 'knit', 'bent', 'wrench', 'crack', 'heavenly',
      'deceive', 'maddening', 'plain', 'writer', 'rapid', 'acidic', 'decide', 'hat', 'paint', 'cow', 'dysfunctional', 'pet', 'giraffe',
      'connection', 'sour', 'voracious', 'cloudy', 'wry', 'curve', 'agree', 'eggnog', 'flaky', 'painstaking', 'warm', 'silk', 'icy',
      'hellish', 'toy', 'milky', 'skirt', 'test', 'daffy', 'questionable', 'gamy', 'aware', 'berry', 'throne', 'oven', 'subtract', 'cool',
      'care', 'charge', 'smash', 'curve', 'comfortable', 'narrow', 'merciful', 'material', 'fear', 'exercise', 'skinny', 'fire',
      'rainstorm', 'tail', 'nondescript', 'calculating', 'pack', 'steel', 'marvelous', 'baseball', 'furtive', 'stitch', 'abiding', 'empty',
      'bushes', 'painful', 'tense', 'verse', 'unwritten', 'reproduce', 'receptive', 'bottle', 'silky', 'alleged', 'stingy', 'irritate',
      'expand', 'cap', 'unsuitable', 'gigantic', 'exist', 'damp', 'scrub', 'disgusted', 'sun', 'ink', 'detailed', 'defeated', 'economic',
      'chunky', 'stop', 'overflow', 'numerous', 'joyous', 'wipe', 'drink', 'error', 'branch', 'male', 'proud', 'soggy', 'ship', 'excite',
      'industry', 'wistful', 'man', 'vacation', 'doctor', 'naughty', 'plane', 'ignore', 'open', 'act', 'earthquake', 'inconclusive',
      'reflect', 'force', 'funny', 'wonder', 'magenta', 'near', 'dam', 'windy', 'maid', 'wacky', 'release', 'birthday', 'statement',
      'psychotic', 'quicksand', 'things', 'planes', 'boundary', 'nod', 'touch', 'argue', 'sin', 'train', 'adhoc', 'needle', 'regret',
      'stroke', 'strengthen', 'bruise', 'mine', 'rod', 'tax', 'twig', 'advise', 'stamp', 'rhyme', 'obnoxious', 'few', 'inform', 'fixed',
      'mailbox', 'bells', 'grade', 'machine', 'yarn', 'lighten', 'tub', 'guiltless', 'hot', 'misty', 'van', 'flap', 'nosy', 'neighborly',
      'crime', 'nifty', 'uninterested', 'noisy', 'oafish', 'squeal', 'page', 'wet', 'embarrassed', 'long-term', 'closed', 'language',
      'argument', 'elite', 'ban', 'trip', 'tour', 'wine', 'profit', 'envious', 'love', 'back', 'bite-sized', 'magical', 'snatch', 'elated',
      'sniff', 'far', 'shy', 'deeply', 'zoom', 'invent', 'downtown', 'heartbreaking', 'angry', 'can', 'bucket', 'important', 'fetch',
      'shoe', 'self', 'x-ray', 'abhorrent', 'lumpy', 'fertile', 'nest', 'pick', 'history', 'offbeat', 'interrupt', 'yell', 'grain',
      'scintillating', 'alluring', 'wren', 'form', 'attack', 'foregoing', 'suspect', 'daughter', 'moldy', 'signal', 'placid', 'quirky',
      'itchy', 'butter', 'ordinary', 'imaginary', 'list', 'known', 'servant', 'slow', 'apparel', 'meeting', 'lovely', 'bat', 'insurance',
      'waste', 'aromatic', 'foot', 'breakable', 'theory', 'stiff', 'cream', 'train', 'ground', 'fuel', 'wary', 'store', 'wonderful', 'corn',
      'zippy', 'dashing', 'risk', 'prose', 'try', 'green', 'bead', 'recess', 'chop', 'stain', 'faded', 'heat', 'camera', 'panicky',
      'depressed', 'wooden', 'clumsy', 'gullible', 'railway', 'guide', 'current', 'giants', 'enter', 'talented', 'bustling', 'square',
      'jewel', 'bee', 'jelly', 'utopian', 'heal', 'anger', 'balance', 'tick', 'turn', 'unique', 'lively', 'wrist', 'fade', 'tender',
      'outgoing', 'own', 'sigh', 'jobless', 'boiling', 'parallel', 'vest', 'leather', 'spark', 'suck', 'knot', 'circle', 'square', 'supply',
      'tank', 'fax', 'spotless', 'habitual', 'feeling', 'watch', 'cattle', 'end', 'true', 'zonked', 'poison', 'man', 'pedal', 'boorish',
      'moaning', 'mindless', 'bone', 'spot', 'chubby', 'numberless', 'eye', 'bright', 'sweet', 'fanatical', 'oranges', 'calm', 'squash',
      'tooth', 'petite', 'design', 'one', 'bump', 'aberrant', 'mine', 'fit', 'rub', 'optimal', 'ugly', 'lyrical', 'borrow', 'queue',
      'alert', 'normal', 'wrathful', 'truculent', 'level', 'hollow', 'disillusioned', 'kick', 'weather', 'mighty', 'upbeat', 'troubled',
      'snotty', 'many', 'warn', 'thank', 'trains', 'plan', 'choke', 'activity', 'attend', 'walk', 'thought', 'gabby', 'actor', 'prickly',
      'smell', 'dangerous', 'observation', 'action', 'steady', 'hypnotic', 'second-hand', 'zip', 'mundane', 'sand', 'sneaky', 'harm',
      'pancake', 'guarantee', 'empty', 'bulb', 'burn', 'reject', 'decorate', 'obese', 'crowd', 'clap', 'flat', 'available', 'hop', 'untidy',
      'wreck', 'fasten', 'waves', 'dinosaurs', 'dreary', 'fearful', 'answer', 'parched', 'tight', 'animated', 'desk', 'jaded', 'wax',
      'silver', 'scream', 'puzzling', 'unbiased', 'unite', 'branch', 'quack', 'writing', 'tease', 'mint', 'full', 'plate', 'gusty', 'bear',
      'bell', 'sparkling', 'absurd', 'past', 'earsplitting', 'seemly', 'unadvised', 'paper', 'battle', 'friend', 'control', 'rich',
      'regret', 'used', 'scattered', 'redundant', 'slave', 'languid', 'didactic', 'fairies', 'sofa', 'spiteful', 'reply', 'division',
      'engine', 'suppose', 'homeless', 'pinch', 'ray', 'channel', 'repeat', 'smoke', 'concentrate', 'handy', 'committee', 'songs', 'madly',
      'itch', 'hands', 'clean', 'addition', 'majestic', 'careful', 'fallacious', 'guarded', 'last', 'time', 'tumble', 'plastic', 'force',
      'guess', 'grape', 'loving', 'hand', 'remain', 'vigorous', 'wash', 'cars', 'same', 'provide', 'shelf', 'yam', 'onerous', 'claim',
      'tramp', 'glistening', 'innocent', 'lock', 'close', 'absorbing', 'daily', 'amuck', 'manage', 'energetic', 'absent', 'fantastic',
      'flippant', 'unnatural', 'amount', 'luxuriant', 'clover', 'alert', 'wheel', 'cellar', 'agonizing', 'card', 'memorise', 'meal',
      'suspend', 'concerned', 'uneven', 'deranged', 'spiritual', 'arch', 'dare', 'hammer', 'tug', 'jump', 'vase', 'plant', 'color', 'worm',
      'grab', 'frame', 'taste', 'incandescent', 'little', 'rule', 'confused', 'roomy', 'gorgeous', 'heat', 'whole', 'cracker', 'water',
      'flimsy', 'high-pitched', 'grandfather', 'spooky', 'natural', 'grease', 'noiseless', 'superficial', 'gaze', 'finger', 'afford',
      'racial', 'tiresome', 'tremendous', 'zealous', 'slip', 'position', 'mountainous', 'shelter', 'calculator', 'tacky', 'whip',
      'mountain', 'clear', 'thin', 'smell', 'ants', 'yellow', 'cross', 'employ', 'trouble', 'dazzling', 'enchanting', 'groovy', 'measure',
      'disapprove', 'elastic', 'sparkle', 'cub', 'foolish', 'discussion', 'stormy', 'pies', 'absorbed', 'trashy', 'mammoth', 'low',
      'subdued', 'badge', 'letter', 'previous', 'challenge', 'tart', 'cute', 'suit', 'condition', 'pricey', 'rule', 'wrong', 'bomb', 'wiry',
      'swim', 'crack', 'disgusting', 'gather', 'half', 'sturdy', 'probable', 'stream', 'trick', 'silly', 'sulky', 'nail', 'rotten', 'stir',
      'sneeze', 'even', 'adamant', 'cluttered', 'object', 'battle', 'petite', 'wait', 'instinctive', 'donkey', 'squeamish', 'rainy',
      'craven', 'acceptable', 'husky', 'pollution', 'judicious', 'distribution', 'neck', 'left', 'collect', 'thankful', 'describe',
      'complex', 'transport', 'horses', 'hope', 'chemical', 'dress', 'idea', 'extend', 'laugh', 'event', 'route', 'hose', 'abundant',
      'insect', 'spectacular', 'whistle', 'home', 'vast', 'massive', 'grey', 'sail', 'lavish', 'word', 'coach', 'repair', 'squeak',
      'curious', 'beam', 'middle', 'obscene', 'efficacious', 'supreme', 'torpid', 'jazzy', 'linen', 'cause', 'synonymous', 'book', 'brave',
      'staking', 'weak', 'show', 'birds', 'barbarous', 'hilarious', 'injure', 'walk', 'screeching', 'frequent', 'wide', 'kiss', 'lonely',
      'quarrelsome', 'arm', 'flowers', 'surround', 'level', 'enjoy', 'calculate', 'reach', 'brother', 'grandiose', 'clammy', 'thunder',
      'pen', 'rake', 'whirl', 'sharp', 'fence', 'scissors', 'polish', 'recondite', 'brief', 'pig', 'ten', 'spell', 'coal', 'sidewalk',
      'straight', 'melted', 'ring', 'deadpan', 'nine', 'wound', 'use', 'switch', 'watch', 'meat', 'governor', 'lively', 'neat', 'dapper',
      'gate', 'rose', 'wealthy', 'psychedelic', 'slap', 'note', 'request', 'match', 'abashed', 'snail', 'tray', 'pump', 'disappear',
      'vegetable', 'wool', 'abstracted', 'impulse', 'fork', 'brake', 'shiny', 'team', 'coherent', 'dust', 'relieved', 'long', 'broad',
      'shop', 'innate', 'milk', 'mother', 'screw', 'cushion', 'listen', 'spot', 'willing', 'legs', 'clever', 'obsolete', 'coil', 'smoke',
      'call', 'men', 'purpose', 'bumpy', 'receipt', 'soothe', 'thinkable', 'launch', 'kittens', 'oceanic', 'dolls', 'jagged', 'fine',
      'start', 'muddled', 'want', 'develop', 'skillful', 'real', 'sisters', 'cooperative', 'retire', 'scarecrow', 'caring', 'chance',
      'search', 'visitor', 'stem', 'rabid', 'seed', 'endurable', 'cloistered', 'knife', 'cast', 'trouble', 'cold', 'brainy', 'admit',
      'base', 'multiply', 'escape', 'bike', 'frighten', 'large', 'pull', 'observant', 'stereotyped', 'dirty', 'tin', 'vague', 'celery',
      'hungry', 'best', 'difficult', 'burly', 'horse', 'flawless', 'fresh', 'inquisitive', 'illegal', 'omniscient', 'simplistic', 'selfish',
      'clean', 'hospital', 'encouraging', 'incompetent', 'right', 'learn', 'relation', 'spoil', 'amused', 'ruthless', 'squalid',
      'aftermath', 'increase', 'greasy', 'futuristic', 'shut', 'friendly', 'steep', 'range', 'faint', 'jail', 'wide-eyed', 'uptight',
      'erratic', 'eyes', 'cure', 'overwrought', 'muddle', 'bedroom', 'scale', 'rub', 'conscious', 'snake', 'box', 'command', 'slippery',
      'handsome', 'spy', 'tongue', 'unbecoming', 'magnificent', 'gold', 'resolute', 'face', 'childlike', 'approval', 'meaty', 'frog',
      'abrasive', 'rat', 'peel', 'office', 'panoramic', 'explode', 'selective', 'ahead', 'thaw', 'mean', 'odd', 'hate', 'window', 'somber',
      'guard', 'riddle', 'judge', 'flock', 'black', 'amusement', 'bikes', 'milk', 'sock', 'historical', 'tawdry', 'bare', 'mitten', 'harsh',
      'street', 'unequal', 'five', 'zinc', 'faulty', 'messy', 'thoughtful', 'spicy', 'oval', 'telephone', 'decisive', 'teeny', 'fix',
      'outstanding', 'excuse', 'abject', 'print', 'receive', 'jump', 'knock', 'ubiquitous', 'anxious', 'fill', 'shrug', 'ossified',
      'penitent', 'dry', 'abaft', 'uncle', 'voiceless', 'spray', 'town', 'aspiring', 'testy', 'bed', 'likeable', 'breezy', 'jumpy', 'talk',
      'powerful', 'various', 'crawl', 'lacking', 'lethal', 'baby', 'sore', 'mourn', 'behave', 'pass', 'mark', 'summer', 'cause',
      'destruction', 'stale', 'basin', 'embarrass', 'rob', 'income', 'overjoyed', 'aback', 'spark', 'air', 'worthless', 'hospitable',
      'dynamic', 'push', 'nervous', 'dark', 'chin', 'shock', 'frame', 'dojo');

    class function firstName: string;
    class function lastName: string;
    class function fullName: string;
    class function userName: string;
    class function email(aCustomDomain: string = ''): string;
    class function password: string;

    /// <summary>
    /// Return a birth date at where age is less than or equal to 100
    /// </summary>
    class function birthDate: TDate;

    class function thing: string;

    class function otan: string;

    class function word: string;
    class function text(wordsNumber: Integer = 0): string;
    class function loremIpsum(): string;

  end;

implementation

uses SysUtils, Math, dateutils, types, classes;

{ TFaker helper methods }

class function TFaker.randVal(aArray: array of String): string;
begin
  result := aArray[Random(Length(aArray))];
end;

class function TFaker.replace(aFullString, aSubString, aReplaceWith: string): string;
begin
  result := StringReplace(aFullString, aSubString, aReplaceWith, [rfReplaceAll]);
end;

class function TFaker.replace(aFullString: string; aSubStringArray: array of string; aReplaceWith: string): string;
var
  s: string;
begin
  result := aFullString;
  for s in aSubStringArray do
    result := replace(result, s, aReplaceWith);
end;

{ TFaker data provider }

class function TFaker.fullName: string;
begin
  result := randVal(TFaker.NAMES);
end;

class function TFaker.firstName: string;
begin
  result := TFaker.fullName;
  result := Copy(result, 0, Pos(' ', result) - 1);
end;

class function TFaker.lastName: string;
begin
  result := TFaker.fullName;
  result := Copy(result, Pos(' ', result) + 1, Length(result));
end;

class function TFaker.otan: string;
begin
  result := randVal(TFaker.OTAN_ALPHABET);
end;

class function TFaker.password: string;
  function p: string;
  begin
    result := Copy(randVal(TFaker.PASSWORDS), 0, Random(Length(TFaker.PASSWORDS)));
  end;

begin
  // Why 3?
  result := p + p + p;
end;

class function TFaker.birthDate: TDate;
begin
  result := EncodeDate(RandomRange(yearof(date) - 100, yearof(date)), RandomRange(1, 12), RandomRange(1, 31));
end;

class function TFaker.userName: string;
begin
  result := LowerCase(replace(TFaker.fullName, ['.']));
  result := replace(result, ' ', randVal(['.', '_', IntToStr(Random(999999))]));
end;

class function TFaker.email(aCustomDomain: string = ''): string;
begin
  if aCustomDomain <> '' then
    result := TFaker.userName + '@' + aCustomDomain
  else
    result := TFaker.userName + '@' + randVal(TFaker.EMAIL_DOMAINS);
end;

class function TFaker.thing: string;
begin
  result := randVal(TFaker.THINGS);
end;

class function TFaker.word: string;
begin
  result := randVal(TFaker.WORDS);
end;

class function TFaker.text(wordsNumber: Integer): string;
var
  countWords, index: Integer;
  _words: TStringList;
begin
  countWords := wordsNumber;

  if countWords = 0 then
    countWords := RandomRange(1, Length(TFaker.WORDS));

  _words := TStringList.Create;
  while _words.Count <> countWords do
    _words.Add(randVal(TFaker.WORDS) + ' ');

  _words.Delete(countWords - 1);
  result := _words.text;
end;

class function TFaker.loremIpsum: string;
begin
  result := TFaker.LOREM_IPSUM;
end;

end.
