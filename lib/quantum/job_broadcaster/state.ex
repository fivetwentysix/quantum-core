defmodule Quantum.JobBroadcaster.State do
  @moduledoc false

  # State of Quantum.JobBroadcaster

  alias Quantum.{Job, JobBroadcaster, Scheduler, Storage}

  @type t :: %__MODULE__{
          jobs: %{optional(Job.name()) => Job.t()},
          buffer: JobBroadcaster.event(),
          storage: Storage,
          scheduler: Scheduler,
          debug_logging: boolean()
        }

  @enforce_keys [:jobs, :buffer, :storage, :scheduler, :debug_logging]
  defstruct @enforce_keys
end
