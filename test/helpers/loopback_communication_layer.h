#ifndef LOOPBACK_COMMUNICATION_LAYER_H
#define LOOPBACK_COMMUNICATION_LAYER_H

#include <obdemulator/communication_layer.h>
#include <obdemulator/can_frame.h>

namespace ObdEmulator
{
    namespace Helpers
    {
        class LoopbackCommunicationLayer : public CommunicationLayer
        {
        public:
            LoopbackCommunicationLayer() noexcept = default;
            ~LoopbackCommunicationLayer();

            void Start() override;

            CanFrame Send(const CanFrame &queryFrame);

            void Stop() override;
        };
    }
}

#endif