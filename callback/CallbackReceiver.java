//
// Copyright (c) ZeroC, Inc. All rights reserved.
//

import com.zeroc.demos.Ice.callback.Demo.*;

public final class CallbackReceiverI implements CallbackReceiver
{
    @Override
    public void callback(com.zeroc.Ice.Current current)
    {
        System.out.println("received callback");
    }
}