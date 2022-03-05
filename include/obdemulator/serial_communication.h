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
        static const int cErrorCode{-1};

        volatile sig_atomic_t mSignalReceived;
        std::future<void> mFuture;
        std::string mSerialPort;
        speed_t mBaudrate;
        int mFileDescriptor;

        void onSignalReceived(int signum);
        void onDataReceived(std::vector<uint8_t>&& receivedData);

    public:
        /// @brief Constructor
        /// @param serialPort Serial port address
        /// @param baudrate Serial communication baud rate
        SerialCommunication(std::string serialPort, speed_t baudrate);

        ~SerialCommunication();

        bool TryStart() override;

        bool TryStop() override;
    };
}

#endif