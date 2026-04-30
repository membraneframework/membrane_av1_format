defmodule Membrane.AV1 do
  @moduledoc """
  AV1 video stream format for Membrane Framework.

  This module defines the stream format struct used for capability negotiation
  between Membrane elements processing AV1 video streams.
  """

  @typedoc """
  Determines the bit depth and subsampling constraints of a bitstream, with which a decoder
  must be compliant. The constraints are defined in
  [Annex A, chapter A.2. of AV1 specification](https://aomediacodec.github.io/av1-spec/#profiles).
  """
  @type profile :: :main | :high | :professional

  @typedoc """
  Determines the resolution and performance constraints of a bitstream, with which a decoder
  must be compliant. The bitrate constraint for levels 4.0 and higher is also determined
  by `t:tier/0`. The constraints are defined in
  [Annex A, chapter A.3. of AV1 specification](https://aomediacodec.github.io/av1-spec/#levels).
  """
  @type level ::
          :"2.0"
          | :"2.1"
          | :"2.2"
          | :"2.3"
          | :"3.0"
          | :"3.1"
          | :"3.2"
          | :"3.3"
          | :"4.0"
          | :"4.1"
          | :"4.2"
          | :"4.3"
          | :"5.0"
          | :"5.1"
          | :"5.2"
          | :"5.3"
          | :"6.0"
          | :"6.1"
          | :"6.2"
          | :"6.3"
          | :"7.0"
          | :"7.1"
          | :"7.2"
          | :"7.3"

  @typedoc """
  Determines the bitrate and compression rate constraint of a bitstream for a given `t:level/0`.
  In the table defining the constraints of levels
  ([Annex A, chapter A.3. of AV1 specification](https://aomediacodec.github.io/av1-spec/#levels)),
  tier determines whether values from MainMbps and MainCR (`:main` tier), or HighMbps and HighCR
  for (`:high` tier) are assumed. `:main` is the only valid tier for levels lower than 4.0.
  """
  @type tier :: :main | :high

  @type framerate :: {non_neg_integer(), pos_integer()}

  @typedoc """
  AV1 stream format.
  """
  @type t :: %__MODULE__{
          profile: profile() | nil,
          level: level() | nil,
          tier: tier() | nil,
          width: pos_integer() | nil,
          height: pos_integer() | nil,
          framerate: framerate() | nil
        }

  defstruct [:profile, :level, :tier, :width, :height, :framerate]
end
