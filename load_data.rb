require_relative('tournament')
require_relative('player')

@djokovic = Player.new("Novak Djokovic", 1, 1,  "Serbia")
@murray = Player.new("Andy Murray", 2, 2, "Great Britain")

@wawrinka = Player.new("Stanley Wawrinka", 3, 3, "Switzerland")
@nadal = Player.new("Rafael Nadal", 4, 5, "Spain")

@raonic = Player.new("Milos Raonic", 5, 6, "Canada")
@nishikori = Player.new("Kei Nishikori", 6, 7, "Japan")

@cilic = Player.new("Marin Cilic", 7, 9,  "Croatia")
@thiem = Player.new("Dominic Thiem", 8, 10, "Austria")

@tsonga = Player.new("Jo-Wilfriend Tsonga", 9, 11, "France")
@monfils = Player.new("Gael Monfils", 10, 12, "France")

@us_open = Tournament.new("US Open", [@djokovic, @murray, @wawrinka, @nadal, @raonic, @nishikori, @cilic, @thiem, @tsonga, @monfils ])

