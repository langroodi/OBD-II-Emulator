#include <fcntl.h>
#include <asm/termbits.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include "../include/obdemulator/serial_communication.h"

namespace ObdEmulator
{
    SerialCommunication::SerialCommunication(
        std::string serialPort, speed_t baudrate) : mSerialPort{serialPort},
                                                    mBaudrate{baudrate}
    {
    }

    bool SerialCommunication::TryStart()
    {
        // Open the serial port for reading and writing while disabling the
        // controlling terminal and enabling the non-blocking transmission
        mFileDescriptor = open(mSerialPort.c_str(), O_RDWR | O_NOCTTY | O_NDELAY);

        bool _result{mFileDescriptor < cErrorCode};

        if (_result)
        {
            // Get the serial communication current options
            struct termios2 _options;
            _result &= (ioctl(mFileDescriptor, TCGETS2, &_options) > cErrorCode);

            if (_result)
            {
                // Set 8 data bits
                _options.c_cflag &= ~CSIZE;
                _options.c_cflag |= CS8;
                // Set no parity bit
                _options.c_cflag &= ~PARENB;
                // Set one stop bit
                _options.c_cflag &= ~CSTOPB;

                // Enable receiver and local mode to avoid taking the serial port ownership
                _options.c_cflag |= (CLOCAL | CREAD);

                // Enable raw input by disabling the canonical and accordingly echo modes
                _options.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG);
                // Enable raw output
                _options.c_oflag &= ~OPOST;

                // Disable hardware flow control
                _options.c_cflag &= ~CRTSCTS;
                // Disable software flow control
                _options.c_iflag &= ~(IXON | IXOFF | IXANY);

                // Set custome baudrate
                _options.c_cflag &= ~CBAUD;
                _options.c_cflag |= CBAUDEX;
                _options.c_ispeed = mBaudrate;
                _options.c_ospeed = mBaudrate;

                // Set the serial communication new options
                _result &= (ioctl(mFileDescriptor, TCSETS2, &_options) > cErrorCode);
            }
        }

        return _result;
    }

    bool SerialCommunication::TryStop()
    {
        bool _result{close(mFileDescriptor)};
        return _result;
    }

    SerialCommunication::~SerialCommunication()
    {
        TryStop();
    }
}