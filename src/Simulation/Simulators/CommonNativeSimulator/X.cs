﻿// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Intrinsic.Interfaces;

namespace Microsoft.Quantum.Simulation.Simulators
{
    public partial class CommonNativeSimulator
    {
        void IIntrinsicX.Body(Qubit target)
        {
            this.CheckQubit(target);

            X((uint)target.Id);
        }

        void IIntrinsicX.ControlledBody(IQArray<Qubit> controls, Qubit target)
        {
            this.CheckQubits(controls, target);

            SafeControlled(controls,
                () => ((IIntrinsicX)this).Body(target),
                (count, ids) => MCX(count, ids, (uint)target.Id));
        }
    }
}
