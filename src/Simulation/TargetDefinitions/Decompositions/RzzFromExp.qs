// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

namespace Microsoft.Quantum.Intrinsic {
    open Microsoft.Quantum.Targeting;

    /// # Summary
    /// Applies the two qubit Ising $ZZ$ rotation gate.
    ///
    /// # Description
    /// \begin{align}
    ///     R_zz(\theta) \mathrel{:=}
    ///     \begin{bmatrix}
    ///         e^{-i \theta / 2} & 0 & 0 & 0 \\\\
    ///         0 & e^{i \theta / 2} & 0 & 0 \\\\
    ///         0 & 0 & e^{i \theta / 2} & 0 \\\\
    ///         0 & 0 & 0 & e^{-i \theta / 2}
    ///     \end{bmatrix}.
    /// \end{align}
    ///
    /// # Input
    /// ## theta
    /// The angle about which the qubits are rotated.
    /// ## qubit0
    /// The first qubit input to the gate.
    /// ## qubit1
    /// The second qubit input to the gate.
    operation Rzz (theta : Double, qubit0 : Qubit, qubit1 : Qubit) : Unit is Adj + Ctl {
        Exp([PauliZ, PauliZ], theta / -2.0, [qubit0, qubit1]);
    }
}