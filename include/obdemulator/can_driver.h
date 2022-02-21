#ifndef CAN_DRIVER_H
#define CAN_DRIVER_H

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
    public:
        /// @brief Fixed CAN frame data packet size
        static const size_t cFixedFrameSize{20};

    private:
        static const size_t cStandardIdSize{2};
        static const size_t cExtendedIdSize{4};
        static const uint8_t cHeaderByte{0xaa};
        static const uint8_t cTrailerByte{0x55};
        static const uint8_t cExtendedBitMask{0x20};
        static const uint8_t cRemoteBitMask{0x10};

        static std::array<uint8_t, cStandardIdSize> getStandardIdArray(
            uint32_t id);
        static std::array<uint8_t, cExtendedIdSize> getExtendedIdArray(
            uint32_t id);

        static uint32_t getStandardId(
            uint8_t firstByte,
            uint8_t lastByte);

        static uint32_t getExtendedId(
            uint8_t firstByte,
            uint8_t secondtByte,
            uint8_t thirdByte,
            uint8_t lastByte);

        static void setChecksum(
            std::array<uint8_t, cFixedFrameSize> &data);

    public:
        CanDriver() = delete;

        /// @brief Get CAN bus communication configuration packet
        /// @param speed CAN bus communication speed
        /// @param supportExtended Indicates whether extended frame is supported or not
        /// @returns Configuration packet byte array
        static std::array<uint8_t, cFixedFrameSize> GetConfiguration(
            CanBusSpeed speed, bool supportExtended);

        /// @brief Serialize a CAN frame to a variable length byte array
        /// @param frame Frame to be serialized
        /// @returns Serialized frame byte array
        static std::vector<uint8_t> Serialize(
            const CanFrame &frame);

        /// @brief Deserialize a packet to a CAN frame
        /// @param packet Packet data array to be deserialized
        /// @returns Derserialized CAN frame
        /// @throws std::invalid_argument Throws if the data array is invalid
        static CanFrame Deserialize(const std::vector<uint8_t> &packet);
    };
}

#endif