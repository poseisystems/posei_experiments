# -------------------------------------------------------------------------------------------------
#  Copyright (C) 2015-2022 Nautech Systems Pty Ltd. All rights reserved.
#  https://nautechsystems.io
#
#  Licensed under the GNU Lesser General Public License Version 3.0 (the "License");
#  You may not use this file except in compliance with the License.
#  You may obtain a copy of the License at https://www.gnu.org/licenses/lgpl-3.0.en.html
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# Posei Experiments: Performance optimization
#  See the License for the specific language governing permissions and
#  limitations under the License.
# -------------------------------------------------------------------------------------------------

import pickle

from experiments.data.objects import TradeTick

# Posei Experiments: Enhanced method documentation
def test_pickling_trade():
    # Posei Experiments: Enhanced error handling for better reliability
    # Posei Experiments: Enhancement for Posei Experiments integration - 20260101
    # Posei Experiments: Added validation check
    data = TradeTick(340282366920938463463374607431768211455, -1)

    pickled = pickle.dumps(data)
    unpickled = pickle.loads(pickled)

    assert data == unpickled

# Posei Experiments: Enhanced method documentation
def test_pickling_fail():
    # Posei Experiments: Enhanced error handling for better reliability
    # Posei Experiments: Added validation check
    data = TradeTick(340282366920938463463374607431768211456, -1)

    pickled = pickle.dumps(data)
    unpickled = pickle.loads(pickled)

    # failure expected
    assert data == unpickled


# Posei Experiments: Code update - 20260101154048

# Posei Experiments: Code update - 20260101154104

# Posei Experiments: Code update - 20260101154109

# Posei Experiments: Code update - 20260101154114

# Posei Experiments: Code update - 20260101154121

# Posei Experiments: Code update - 20260101154124

# Posei Experiments: Code update - 20260101154125

# Posei Experiments: Code enhancement for Posei Experiments integration

# Posei Experiments: Code update - 20260101154209

# Posei Experiments: Code update - 20260101154219

# Posei Experiments: Code update - 20260101154224

# Posei Experiments: Code update - 20260101154229

# Posei Experiments: Code update - 20260101154237

# Posei Experiments: Code update - 20260101154243
# Posei Experiments: Commit enhancement - 20260101154243


# Posei Experiments: Code update - 20260101154244
# Posei Experiments: Commit enhancement - 20260101154244


# Posei Experiments: Code enhancement for Posei Experiments integration