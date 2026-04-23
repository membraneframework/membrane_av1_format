defmodule Membrane.AV1 do
  @moduledoc """
  AV1 video stream format for Membrane Framework.

  This module defines the stream format struct used for capability negotiation
  between Membrane elements processing AV1 video streams.

  ## Fields

  - `profile` - AV1 profile: 0 (Main), 1 (High), 2 (Professional)
  - `level` - AV1 level string (e.g., "4.0", "5.1")
  - `tier` - AV1 tier: 0 (Main), 1 (High)
  - `width` - Frame width in pixels (optional)
  - `height` - Frame height in pixels (optional)
  - `framerate` - Framerate as {num, denom} tuple (optional)

  ## Example

      %Membrane.AV1{
        profile: 0,
        level: "4.0",
        tier: 0,
        width: 1920,
        height: 1080
      }
  """

  @type profile :: :main | :high | :professional
  @type tier :: :main | :high
  @type level :: String.t()
  @type framerate :: {non_neg_integer(), pos_integer()}

  @typedoc """
  AV1 stream format.
  """
  @type t :: %__MODULE__{
          width: pos_integer() | nil,
          height: pos_integer() | nil,
          profile: profile() | nil,
          tier: tier() | nil,
          level: level() | nil,
          framerate: framerate() | nil
        }

  defstruct [:width, :height, :profile, :level, :tier, :framerate]

  @spec valid_levels() :: [level()]
  def valid_levels() do
    [
      "2.0",
      "2.1",
      "2.2",
      "2.3",
      "3.0",
      "3.1",
      "3.2",
      "3.3",
      "4.0",
      "4.1",
      "4.2",
      "4.3",
      "5.0",
      "5.1",
      "5.2",
      "5.3",
      "6.0",
      "6.1",
      "6.2",
      "6.3"
      # "7.0",
      # "7.1",
      # "7.2",
      # "7.3"
    ]
  end
end
