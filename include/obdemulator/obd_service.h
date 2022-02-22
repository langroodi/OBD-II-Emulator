#ifndef OBD_SERVICE_H
#define OBD_SERVICE_H

#include <stdint.h>
#include <vector>

namespace ObdEmulator
{
    /// @brief A class that defines an OBD-II service based on SAE J1979 standard
    class ObdService
    {
    private:
        const uint8_t mService;

    protected:
        /// @brief Constructor
        /// @param service OBD-II service (mode)
        ObdService(uint8_t service) noexcept;

    public:
        ~ObdService() noexcept = default;
        
        /// @brief Get the service
        /// @returns OBD service number
        uint8_t GetService() const noexcept;

        /// @brief Get the emulated response based the requested PID
        /// @param pid Standard parameter ID
        /// @returns Response byte array
        /// @note The function may be called from a different thread than the main thread.
        virtual std::vector<uint8_t> GetResponse(
            const std::vector<uint8_t> &pid) = 0;
    };
}

#endif