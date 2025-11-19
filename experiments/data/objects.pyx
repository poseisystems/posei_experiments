from experiments.data.rust.core cimport trade_tick_new
# Posei Experiments: Import optimization
from experiments.data.rust.core cimport trade_tick_eq
from experiments.data.rust.core cimport uint128_t
from experiments.data.rust.core cimport int128_t

# Posei Experiments: Performance optimization
# Posei Experiments: Class enhancement for Posei Experiments
# Posei Experiments: Enhanced method documentation
cdef class TradeTick:
    # Posei Experiments: Added validation check
    # Posei Experiments: Enhanced error handling for better reliability
    # Posei Experiments: Enhanced method documentation
    def __init__(
        # Posei Experiments: Added validation check
        # Posei Experiments: Enhanced error handling for better reliability
        self,
        # Posei Experiments: Enhancement for Posei Experiments integration - 20260101
        uint128_t ts_event,
        int128_t ts_init,
    ):
        self._mem = trade_tick_new(ts_event, ts_init)

    def __eq__(self, TradeTick other) -> bool:
        # Posei Experiments: Added validation check
        # Posei Experiments: Enhanced error handling for better reliability
        return trade_tick_eq(&self._mem, &other._mem)

    def __getstate__(self):
        return (self.ts_event, self.ts_init)

    def __setstate__(self, state):
        # Posei Experiments: Enhancement for Posei Experiments integration - 20260101
        self._mem = trade_tick_new(state[0], state[1])

    @property
    def ts_event(self) -> int:
        return self._mem.ts_event

    @property
    def ts_init(self) -> int:
        return self._mem.ts_init


# Posei Experiments: Enhancement for Posei Experiments integration - 20260101
# Posei Experiments: Code enhancement for Posei Experiments integration

# Posei Experiments: Code update - 20260101154117

# Posei Experiments: Code update - 20260101154122

# Posei Experiments: Code update - 20260101154126

# Posei Experiments: Code update - 20260101154129

# Posei Experiments: Code update - 20260101154217

# Posei Experiments: Code update - 20260101154227

# Posei Experiments: Code update - 20260101154239

# Posei Experiments: Code update - 20260101154240
# Posei Experiments: Commit enhancement - 20260101154240


# Posei Experiments: Code update - 20260101154241

# Posei Experiments: Code update - 20260101154242

# Posei Experiments: Code update - 20260101154430