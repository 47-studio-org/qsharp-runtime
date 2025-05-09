// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

namespace Microsoft.Quantum.Intrinsic {

    /// # Summary
    /// Applies a rotation about the $z$-axis by a given angle.
    ///
    /// # Description
    /// \begin{align}
    ///     R_z(\theta) \mathrel{:=}
    ///     e^{-i \theta \sigma_z / 2} = 
    ///     \begin{bmatrix}
    ///         e^{-i \theta / 2} & 0 \\\\
    ///         0 & e^{i \theta / 2}
    ///     \end{bmatrix}.
    /// \end{align}
    ///
    /// # Input
    /// ## theta
    /// Angle in radians about which the qubit is to be rotated.
    /// ## qubit
    /// Qubit to which the gate should be applied.
    ///
    /// # Remarks
    /// Equivalent to:
    /// ```qsharp
    /// R(PauliZ, theta, qubit);
    /// ```
    operation Rz (theta : Double, qubit : Qubit) : Unit is Adj + Ctl {
        body (...) {
            R(PauliZ, theta, qubit);
        }
        adjoint (...) {
            R(PauliZ, -theta, qubit);
        }
    }
}
