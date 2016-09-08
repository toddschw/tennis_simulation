require_relative('tournament')
require_relative('player')

@djokovic = Player.new("Novak Djokovic", 1, 1,  "Serbia", 29, :SF)
@murray = Player.new("Andy Murray", 2, 2, "Great Britain", 29, :QF)

@wawrinka = Player.new("Stanley Wawrinka", 3, 3, "Switzerland", 31, :SF)
@nadal = Player.new("Rafael Nadal", 4, 5, "Spain", 30, :RND4)

@raonic = Player.new("Milos Raonic", 5, 6, "Canada", 25, :RND2 )
@nishikori = Player.new("Kei Nishikori", 6, 7, "Japan", 26, :SF)

@cilic = Player.new("Marin Cilic", 7, 9,  "Croatia", 27, :RND3)
@thiem = Player.new("Dominic Thiem", 8, 10, "Austria", 23, :RND4)

@tsonga = Player.new("Jo-Wilfriend Tsonga", 9, 11, "France", 31, :QF)
@monfils = Player.new("Gael Monfils", 10, 12, "France", 30, :SF )

@us_open = Tournament.new("US Open", [@djokovic, @murray, @wawrinka, @nadal, @raonic, @nishikori, @cilic, @thiem, @tsonga, @monfils ])

