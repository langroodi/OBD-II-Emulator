#ifndef COMMUNICATION_LAYER_H
#define COMMUNICATION_LAYER_H

#include <functional>
#include <vector>
#include <stdint.h>

namespace ObdEmulator
{
    /// @brief Communication medium abstraction layer to send and receive data
    class CommunicationLayer
    {
    protected:
        /// @brief Data received callback type
        using CallbackType = std::function<void(std::vector<uint8_t> &&)>;

        /// @brief Callback to be invoked when data received
        CallbackType Callback;

        /// @brief Constructor
        /// @param callback Callback to be invoked when data received
        CommunicationLayer(CallbackType callback);

        virtual ~CommunicationLayer();

    public:
        /// @brief Start the communication
        virtual void Start() = 0;

        /// @brief Send data via the communication layer
        /// @param data Data to be sent as byte array 
        virtual void Send(const std::vector<uint8_t> &data) = 0;

        /// @brief Stop the communication
        virtual void Stop() = 0;
    };
}

#endif