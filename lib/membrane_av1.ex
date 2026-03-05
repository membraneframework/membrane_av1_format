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

  @typedoc """
  AV1 stream format.
  """
  @type t :: %__MODULE__{
          profile: 0..2 | nil,
          level: String.t() | nil,
          tier: 0..1 | nil,
          width: pos_integer() | nil,
          height: pos_integer() | nil,
          framerate: {non_neg_integer(), pos_integer()} | nil
        }

  defstruct [:profile, :level, :tier, :width, :height, :framerate]
end
