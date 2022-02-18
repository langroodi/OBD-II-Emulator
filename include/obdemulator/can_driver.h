#ifndef CAN_DRIVER_H
#define CAN_DRIVER_H

#include <vector>
#include <stdexcept>
#include "./can_frame.h"

namespace ObdEmulator
{
    /// @brief CAN bus baud rate
    enum class CanBusSpeed : uint8_t
    {
        Speed5kbps = 0x0c,
        Speed10kbps = 0x0b,
        Speed20kbps = 0x0a,
        Speed50kbps = 0x09,
        Speed100kbps = 0x08,
        Speed125kbps = 0x07,
        Speed200kbps = 0x06,
        Speed250kbps = 0x05,
        Speed400kbps = 0x04,
        Speed500kbps = 0x03,
        Speed800kbps = 0x02,
        Speed1000kbps = 0x01
    };

    /// @brief CAN bus controller driver helper
    class CanDriver
    {
    private:
        static uint8_t getChecksum(std::initializer_list<uint8_t> data);

    public:
        static const size_t cFixedFrameSize{20};

        /// @brief Get CAN bus communication configuration packet
        /// @param speed CAN bus communication speed
        /// @param supportExtended Indicates whether extended frame is supported or not
        /// @returns Configuration packet byte array
        static std::array<uint8_t, cFixedFrameSize> GetConfiguration(
            CanBusSpeed speed, bool supportExtended);

        /// @brief Serialize a CAN frame to a variable length byte array
        /// @param frame Frame to be serialized
        /// @returns Serialized frame byte array
        /// @see SerializeConstLength(CanFrame)
        static std::vector<uint8_t> SerializeVarLength(
            const CanFrame frame);

        /// @brief Serialize a CAN frame to a constant length byte array
        /// @param frame Frame to be serialized
        /// @returns Serialized frame byte array
        /// @see SerializeVarLength(CanFrame)
        static std::array<uint8_t, cFixedFrameSize> SerializeConstLength(
            const CanFrame frame);

        /// @brief Deserialize a data array to a CAN frame
        /// @param data Data array to be deserialized
        /// @returns Derserialized CAN frame
        /// @throws std::invalid_argument Throws if the data array is invalid
        static CanFrame Deserialize(std::initializer_list<uint8_t> data);
    };
}

#endif