#ifndef SERIAL_COMMUNICATION_H
#define SERIAL_COMMUNICATION_H

#include <signal.h>
#include <future>
#include "./communication_layer.h"

namespace ObdEmulator
{
    /// @brief Serial port communication layer
    class SerialCommunication : public CommunicationLayer
    {
    private:
        volatile sig_atomic_t mSignalReceived;
        std::future<void> mFuture;
        std::string mSerialPort;
        uint32_t mBaudRate;

        void onSignalReceived(int signum);
        void onDataReceived(std::vector<uint8_t>&& receivedData);

    public:
        /// @brief Constructor
        /// @param serialPort Serial port address
        /// @param baudRate Serial communication baud rate
        SerialCommunication(std::string serialPort, uint32_t baudrate);

        ~SerialCommunication();

        void Start() override;

        void Send(const std::vector<uint8_t> &data) override;

        void Stop() override;
    };
}

#endif