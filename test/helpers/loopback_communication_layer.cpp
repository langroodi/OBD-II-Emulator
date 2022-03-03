#include <obdemulator/can_driver.h>
#include "./loopback_communication_layer.h"

namespace ObdEmulator
{
    namespace Helpers
    {
        void LoopbackCommunicationLayer::Start()
        {
        }

        CanFrame LoopbackCommunicationLayer::Send(const CanFrame &queryFrame)
        {
            std::vector<uint8_t> _queryData{CanDriver::Serialize(queryFrame)};
            std::vector<uint8_t> _responseData;
            bool _succeed{Callback(std::move(_queryData), _responseData)};
            if (_succeed)
            {
                CanFrame _result{CanDriver::Deserialize(_responseData)};
                return _result;
            }
            else
            {
                throw std::runtime_error("The query is not handled.");
            }
        }

        void LoopbackCommunicationLayer::Stop()
        {
        }

        LoopbackCommunicationLayer::~LoopbackCommunicationLayer()
        {
            Stop();
        }
    }
}