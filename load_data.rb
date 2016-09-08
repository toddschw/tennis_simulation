require_relative('tournament')
require_relative('player')

@djokovic = Player.new("Novak Djokovic", 1, 1,  "Serbia", 29)
@murray = Player.new("Andy Murray", 2, 2, "Great Britain", 29)

@wawrinka = Player.new("Stanley Wawrinka", 3, 3, "Switzerland", 31)
@nadal = Player.new("Rafael Nadal", 4, 5, "Spain", 30)

@raonic = Player.new("Milos Raonic", 5, 6, "Canada", 25)
@nishikori = Player.new("Kei Nishikori", 6, 7, "Japan", 26)

@cilic = Player.new("Marin Cilic", 7, 9,  "Croatia", 27)
@thiem = Player.new("Dominic Thiem", 8, 10, "Austria", 23)

@tsonga = Player.new("Jo-Wilfriend Tsonga", 9, 11, "France", 31)
@monfils = Player.new("Gael Monfils", 10, 12, "France", 30 )

@us_open = Tournament.new("US Open", [@djokovic, @murray, @wawrinka, @nadal, @raonic, @nishikori, @cilic, @thiem, @tsonga, @monfils ])

