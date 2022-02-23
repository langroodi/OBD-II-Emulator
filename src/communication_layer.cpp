#include "../include/obdemulator/communication_layer.h"

namespace ObdEmulator
{
    void CommunicationLayer::SetCallback(CallbackType &&callback)
    {
        Callback = std::move(callback);
    }

    void CommunicationLayer::ResetCallback() noexcept
    {
        Callback = nullptr;
    }
}