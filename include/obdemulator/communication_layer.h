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
    public:
        /// @brief Data received callback type
        /// @details The caller moves the received byte array to the callback and expects the handler to return a boolean that indiciates whether or not it fills the other byte array refenrece as the response.
        using CallbackType = std::function<bool(std::vector<uint8_t> &&, std::vector<uint8_t> &)>;

    protected:
        /// @brief Callback to be invoked when data received
        CallbackType Callback;

    public:
        CommunicationLayer() noexcept = default;
        virtual ~CommunicationLayer() noexcept = default;

        /// @brief Start the communication
        virtual void Start() = 0;

        /// @brief Set a data received callaback
        /// @param callback Callback to be invoked when a data is received
        void SetCallback(CallbackType &&callback);

        /// @brief Reset the data received callback if it has been already set
        /// @see SetCallback(CallbackType)
        void ResetCallback() noexcept;

        /// @brief Stop the communication
        virtual void Stop() = 0;
    };
}

#endif