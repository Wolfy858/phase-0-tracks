board_games =  {
  chess_game: [
    [
      "rook",
      "knight",
      "bishop"
    ],
    [
      "pawn",
      "pawn",
      "pawn"
    ],
    []
  ],
  checkers_game: [
    [
      "piece",
      nil,
      "piece"
    ],
    [
      nil,
      "king",
      nil
    ],
    [
      "piece",
      nil,
      "king"
    ]
  ],
  arimaa_game: [
    [
      "rabbit",
      "elephant",
      "camel"
    ],
    [
      "dog",
      "rabbit",
      "cat"
    ],
    []
  ]
}
puts board_games[:chess_game][0][2]
puts board_games[:checkers_game][2][2]
p board_games[:arimaa_game][2][1]
puts board_games[:arimaa_game][0][1]
