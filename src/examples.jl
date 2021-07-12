module Examples

  using ..AlphaZero

  include("../games/tictactoe/main.jl")
  export Tictactoe

  include("../games/connect-four/main.jl")
  export ConnectFour

  include("../games/bonbon-rectangle/main.jl")
  export BonbonRectangle
  
  include("../games/grid-world/main.jl")
  export GridWorld

  include("../games/mancala/main.jl")
  export Mancala

  const games = Dict(
    "grid-world" => GridWorld.GameSpec(),
    "tictactoe" => Tictactoe.GameSpec(),
    "connect-four" => ConnectFour.GameSpec(),
    "bonbon-rectangle" => BonbonRectangle.GameSpec(),
    "mancala" => Mancala.GameSpec())

  const experiments = Dict(
    "grid-world" => GridWorld.Training.experiment,
    "tictactoe" => Tictactoe.Training.experiment,
    "connect-four" => ConnectFour.Training.experiment,
    "bonbon-rectangle" => BonbonRectangle.Training.experiment,
    "mancala" => Mancala.Training.experiment)

end